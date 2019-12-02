package main

import "bufio"

import "os"
import "strconv"

func main() {
	f := fuel_from_file("input")
	println(f)
}

func fuel_from_fuel(f int) int {
	extra := (f / 3) - 2
	if extra > 0 {
		return extra + fuel_from_fuel(extra)
	}

	return 0
}

func fuel_from_file(f string) int {
	file, err := os.Open(f)
	if err != nil {
		panic(err)
	}
	defer file.Close()

	total := 0
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		// no errors here
		i, _ := strconv.Atoi(scanner.Text())
		i = (i / 3) - 2
		total += fuel_from_fuel(i) + i
	}
	return total
}

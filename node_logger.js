const reset = '\x1b[0m'

const ansiColours = {
  rgb: (r, g, b) => `2;${r};${g};${b}m`,
  ansi256: (id) => `2;${id}m`,
  fg: (colour) => `\x1b[38;${colour}`,
  bg: (colour) => `\x1b[48;${colour}`
}

const { rgb, fg } = ansiColours

const white = fg(rgb(255, 255, 255))
const cyan = fg(rgb(0, 255, 255))
const yellow = fg(rgb(255, 255, 0))
const red = fg(rgb(255, 0, 0))

const logger = {
  log: (message) => process.stdout.write(`${white}LOG: ${message}${reset}`),
  info: (message) => process.stdout.write(`${cyan}INFO: ${message}${reset}`),
  warn: (message) => process.stdout.write(`${yellow}WARNING: ${message}${reset}`),
  error: (message) => process.stdout.write(`${red}ERROR: ${message}${reset}`)
}

export default logger

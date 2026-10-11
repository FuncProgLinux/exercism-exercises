const std = @import("std");

pub fn isIsogram(str: []const u8) bool {
    for (str, 0..) |char, i| {
        for (str[i + 1 ..]) |repeated| {
            if (!std.ascii.isAlphabetic(char) or !std.ascii.isAlphabetic(repeated)) continue;

            const char_lower = std.ascii.toLower(char);
            const repeated_lower = std.ascii.toLower(repeated);

            if (char_lower == repeated_lower and (char_lower != '-' or char_lower != ' ')) return false;
        }
    }
    return true;
}

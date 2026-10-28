const std = @import("std");

pub fn isPangram(str: []const u8) bool {
    const alphabet = "abcdefghijklmnopqrstuvwxyz";

    if (std.mem.eql(u8, str, "")) {
        return false;
    }

    for (alphabet) |byte| {
        var checkpost = false;

        for (str) |cmp| {
            const tmp_byte = std.ascii.toLower(byte);
            const tmp_cmp = std.ascii.toLower(cmp);

            if (tmp_byte == tmp_cmp) {
                checkpost = true;
                break;
            }
        }
        if (!checkpost) {
            return false;
        }
    }
    return true;
}

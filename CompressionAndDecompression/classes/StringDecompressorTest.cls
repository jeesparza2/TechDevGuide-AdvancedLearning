@isTest
private class StringDecompressorTest {
    @isTest private static void decompressString_abcabcabcababababc_3abc4abc() {
        StringDecompressor decompressor = new StringDecompressor();
        String output = decompressor.decompressString(input);
        System.assertEquals('abcabcabcababababc', output, 'ERROR String decompressed in an unexpected manner: ' + output);
    }
    
    @isTest private static void decompressString_aaaaaaaaaa_10a() {
        StringDecompressor decompressor = new StringDecompressor();
        String input = '10[a]';
        String output = decompressor.decompressString(input);
        System.assertEquals('aaaaaaaaaa', output, 'ERROR String decompressed in an unexpected manner: ' + output);
    }
}
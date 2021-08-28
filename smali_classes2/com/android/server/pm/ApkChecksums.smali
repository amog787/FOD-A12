.class public Lcom/android/server/pm/ApkChecksums;
.super Ljava/lang/Object;
.source "ApkChecksums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ApkChecksums$Injector;
    }
.end annotation


# static fields
.field static final ALGO_MD5:Ljava/lang/String; = "MD5"

.field static final ALGO_SHA1:Ljava/lang/String; = "SHA1"

.field static final ALGO_SHA256:Ljava/lang/String; = "SHA256"

.field static final ALGO_SHA512:Ljava/lang/String; = "SHA512"

.field private static final DIGESTS_FILE_EXTENSION:Ljava/lang/String; = ".digests"

.field private static final DIGESTS_SIGNATURE_FILE_EXTENSION:Ljava/lang/String; = ".signature"

.field private static final EMPTY_CERTIFICATE_ARRAY:[Ljava/security/cert/Certificate;

.field private static final PROCESS_REQUIRED_CHECKSUMS_DELAY_MILLIS:J = 0x3e8L

.field private static final PROCESS_REQUIRED_CHECKSUMS_TIMEOUT_MILLIS:J = 0x5265c00L

.field static final TAG:Ljava/lang/String; = "ApkChecksums"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    sput-object v0, Lcom/android/server/pm/ApkChecksums;->EMPTY_CERTIFICATE_ARRAY:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "codePath"    # Ljava/lang/String;

    .line 174
    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".apk"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".digests"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code path is not an apk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildSignaturePathForDigests(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "digestsPath"    # Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".signature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V
    .locals 3
    .param p1, "split"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "required"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "II)V"
        }
    .end annotation

    .line 715
    .local p0, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    and-int v0, p3, p4

    if-eqz v0, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    invoke-static {p2, p4}, Lcom/android/server/pm/ApkChecksums;->getApkChecksum(Ljava/io/File;I)[B

    move-result-object v0

    .line 717
    .local v0, "checksum":[B
    if-eqz v0, :cond_0

    .line 718
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ApkChecksum;

    invoke-direct {v2, p1, p4, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    .end local v0    # "checksum":[B
    :cond_0
    return-void
.end method

.method private static calculatePartialChecksumsIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;I)V
    .locals 16
    .param p1, "split"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "required"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "I)V"
        }
    .end annotation

    .line 770
    .local p0, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    move-object/from16 v1, p0

    const-string v2, "ApkChecksums"

    and-int/lit8 v0, p3, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 772
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 771
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move v5, v0

    .line 773
    .local v5, "needSignatureSha256":Z
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_1

    .line 775
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 774
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    nop

    .line 776
    .local v3, "needSignatureSha512":Z
    :goto_1
    if-nez v5, :cond_2

    if-nez v3, :cond_2

    .line 777
    return-void

    .line 780
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "r"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v6, p2

    :try_start_1
    invoke-direct {v0, v6, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v0

    .line 781
    .local v4, "raf":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 783
    .local v7, "signatureInfo":Landroid/util/apk/SignatureInfo;
    :try_start_2
    invoke-static {v4}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v0

    .line 789
    goto :goto_3

    .line 780
    .end local v7    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catchall_0
    move-exception v0

    move-object/from16 v15, p1

    :goto_2
    move-object v7, v0

    goto :goto_6

    .line 784
    .restart local v7    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 786
    .local v8, "e":Landroid/util/apk/SignatureNotFoundException;
    :try_start_3
    invoke-static {v4}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v0
    :try_end_3
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v0

    .line 788
    goto :goto_3

    .line 787
    :catch_1
    move-exception v0

    .line 790
    .end local v8    # "e":Landroid/util/apk/SignatureNotFoundException;
    :goto_3
    if-nez v7, :cond_3

    .line 791
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "V2/V3 signatures not found in "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 805
    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/DigestException; {:try_start_5 .. :try_end_5} :catch_3

    .line 792
    return-void

    .line 795
    :cond_3
    :try_start_6
    invoke-static {v5, v3}, Lcom/android/server/pm/ApkChecksums;->getContentDigestAlgos(ZZ)[I

    move-result-object v0

    .line 797
    .local v0, "digestAlgos":[I
    nop

    .line 798
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 797
    invoke-static {v0, v8, v7}, Landroid/util/apk/ApkSigningBlockUtils;->computeContentDigestsPer1MbChunk([ILjava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)[[B

    move-result-object v8

    .line 799
    .local v8, "digests":[[B
    const/4 v9, 0x0

    .local v9, "i":I
    array-length v10, v0

    .local v10, "size":I
    :goto_4
    if-ge v9, v10, :cond_5

    .line 800
    aget v11, v0, v9

    invoke-static {v11}, Lcom/android/server/pm/ApkChecksums;->getChecksumKindForContentDigestAlgo(I)I

    move-result v11

    .line 801
    .local v11, "checksumKind":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 802
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Landroid/content/pm/ApkChecksum;

    aget-object v14, v8, v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v15, p1

    :try_start_7
    invoke-direct {v13, v15, v11, v14}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    .line 780
    .end local v0    # "digestAlgos":[I
    .end local v7    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local v8    # "digests":[[B
    .end local v9    # "i":I
    .end local v10    # "size":I
    .end local v11    # "checksumKind":I
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 801
    .restart local v0    # "digestAlgos":[I
    .restart local v7    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .restart local v8    # "digests":[[B
    .restart local v9    # "i":I
    .restart local v10    # "size":I
    .restart local v11    # "checksumKind":I
    :cond_4
    move-object/from16 v15, p1

    .line 799
    .end local v11    # "checksumKind":I
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v15, p1

    .line 805
    .end local v0    # "digestAlgos":[I
    .end local v7    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local v8    # "digests":[[B
    .end local v9    # "i":I
    .end local v10    # "size":I
    :try_start_8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/security/DigestException; {:try_start_8 .. :try_end_8} :catch_2

    .line 807
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_9

    .line 780
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :goto_6
    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v8, v0

    :try_start_a
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "needSignatureSha512":Z
    .end local v5    # "needSignatureSha256":Z
    .end local p0    # "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .end local p1    # "split":Ljava/lang/String;
    .end local p2    # "file":Ljava/io/File;
    .end local p3    # "required":I
    :goto_7
    throw v7
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/security/DigestException; {:try_start_a .. :try_end_a} :catch_2

    .line 805
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "needSignatureSha512":Z
    .restart local v5    # "needSignatureSha256":Z
    .restart local p0    # "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .restart local p1    # "split":Ljava/lang/String;
    .restart local p2    # "file":Ljava/io/File;
    .restart local p3    # "required":I
    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v15, p1

    goto :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v15, p1

    move-object/from16 v6, p2

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    const-string v4, "Error computing hash."

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void
.end method

.method private static convertToSet([Ljava/security/cert/Certificate;)Ljava/util/Set;
    .locals 6
    .param p0, "array"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            ")",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 615
    if-nez p0, :cond_0

    .line 616
    const/4 v0, 0x0

    return-object v0

    .line 618
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 619
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 620
    .local v3, "item":Ljava/security/cert/Certificate;
    new-instance v4, Landroid/content/pm/Signature;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v3    # "item":Ljava/security/cert/Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    :cond_1
    return-object v0
.end method

.method private static extractHashFromFS(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApkChecksum;
    .locals 5
    .param p0, "split"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 640
    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->getFsverityRootHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 641
    .local v0, "hash":[B
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 642
    new-instance v2, Landroid/content/pm/ApkChecksum;

    invoke-direct {v2, p0, v1, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    return-object v2

    .line 647
    .end local v0    # "hash":[B
    :cond_0
    nop

    .line 648
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractCertificates(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v2

    .line 649
    .local v2, "signer":Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    iget-object v3, v2, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 651
    .local v3, "hash":[B
    if-eqz v3, :cond_1

    .line 652
    new-instance v4, Landroid/content/pm/ApkChecksum;

    invoke-direct {v4, p0, v1, v3}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 651
    .end local v2    # "signer":Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .end local v3    # "hash":[B
    :cond_1
    goto :goto_0

    .line 656
    :catch_0
    move-exception v1

    .line 657
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "ApkChecksums"

    const-string v3, "V4 signature error"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 654
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 658
    :goto_0
    nop

    .line 659
    :goto_1
    return-object v0
.end method

.method private static extractHashFromV2V3Signature(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 8
    .param p0, "split"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "types"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;"
        }
    .end annotation

    .line 664
    const/4 v0, 0x0

    .line 666
    .local v0, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-static {p1, v2, v1}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Ljava/lang/String;IZ)Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    move-result-object v1

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->contentDigests:Ljava/util/Map;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 673
    goto :goto_0

    .line 669
    :catch_0
    move-exception v1

    .line 670
    .local v1, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$PackageParserException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Landroid/util/apk/SignatureNotFoundException;

    if-nez v3, :cond_0

    .line 671
    const-string v3, "ApkChecksums"

    const-string v4, "Signature verification error"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    .end local v1    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 676
    return-object v1

    .line 679
    :cond_1
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 680
    .local v3, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_2

    .line 681
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 682
    .local v4, "hash":[B
    if-eqz v4, :cond_2

    .line 683
    const/16 v5, 0x20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/content/pm/ApkChecksum;

    invoke-direct {v7, p0, v5, v4}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    .end local v4    # "hash":[B
    :cond_2
    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_3

    .line 688
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 689
    .local v1, "hash":[B
    if-eqz v1, :cond_3

    .line 690
    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/content/pm/ApkChecksum;

    invoke-direct {v5, p0, v2, v1}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .end local v1    # "hash":[B
    :cond_3
    return-object v3
.end method

.method public static findDigestsForFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "targetFile"    # Ljava/io/File;

    .line 201
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ApkChecksums;->buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "digestsPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, "digestsFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public static findSignatureForDigests(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "digestsFile"    # Ljava/io/File;

    .line 211
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ApkChecksums;->buildSignaturePathForDigests(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "signaturePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "signatureFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private static getApkChecksum(Ljava/io/File;I)[B
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "type"    # I

    .line 724
    const-string v0, "ApkChecksums"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 726
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/high16 v4, 0x80000

    :try_start_2
    new-array v4, v4, [B

    .line 727
    .local v4, "dataBytes":[B
    const/4 v5, 0x0

    .line 729
    .local v5, "nread":I
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->getMessageDigestAlgoForChecksumKind(I)Ljava/lang/String;

    move-result-object v6

    .line 730
    .local v6, "algo":Ljava/lang/String;
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 731
    .local v7, "md":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    move v5, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 732
    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 735
    :cond_0
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 736
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0

    .line 735
    return-object v8

    .line 724
    .end local v4    # "dataBytes":[B
    .end local v5    # "nread":I
    .end local v6    # "algo":Ljava/lang/String;
    .end local v7    # "md":Ljava/security/MessageDigest;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "type":I
    :goto_1
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "type":I
    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "type":I
    :goto_2
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_0

    .line 739
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "type":I
    :catch_0
    move-exception v2

    .line 740
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Device does not support MessageDigest algorithm"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    return-object v1

    .line 736
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 737
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to compute hash."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    return-object v1
.end method

.method private static getAvailableApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V
    .locals 3
    .param p0, "split"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "types"    # I
    .param p3, "installerPackageName"    # Ljava/lang/String;
    .param p4, "trustedInstallers"    # [Ljava/security/cert/Certificate;
    .param p6, "injector"    # Lcom/android/server/pm/ApkChecksums$Injector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;",
            "Lcom/android/server/pm/ApkChecksums$Injector;",
            ")V"
        }
    .end annotation

    .line 390
    .local p5, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "filePath":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1, p2, p5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-static {p0, v0}, Lcom/android/server/pm/ApkChecksums;->extractHashFromFS(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApkChecksum;

    move-result-object v1

    .line 396
    .local v1, "checksum":Landroid/content/pm/ApkChecksum;
    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {v1}, Landroid/content/pm/ApkChecksum;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .end local v1    # "checksum":Landroid/content/pm/ApkChecksum;
    :cond_0
    const/16 v1, 0x20

    invoke-static {v1, p2, p5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x40

    invoke-static {v1, p2, p5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    :cond_1
    invoke-static {p0, v0, p2}, Lcom/android/server/pm/ApkChecksums;->extractHashFromV2V3Signature(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    .line 406
    .local v1, "v2v3checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    if-eqz v1, :cond_2

    .line 407
    invoke-interface {p5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 413
    .end local v1    # "v2v3checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    :cond_2
    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/ApkChecksums;->getInstallerChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V

    .line 415
    return-void
.end method

.method private static getChecksumKindForContentDigestAlgo(I)I
    .locals 1
    .param p0, "contentDigestAlgo"    # I

    .line 758
    packed-switch p0, :pswitch_data_0

    .line 764
    const/4 v0, -0x1

    return v0

    .line 762
    :pswitch_0
    const/16 v0, 0x40

    return v0

    .line 760
    :pswitch_1
    const/16 v0, 0x20

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V
    .locals 17
    .param p1, "optional"    # I
    .param p2, "required"    # I
    .param p3, "installerPackageName"    # Ljava/lang/String;
    .param p4, "trustedInstallers"    # [Ljava/security/cert/Certificate;
    .param p5, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;
    .param p6, "injector"    # Lcom/android/server/pm/ApkChecksums$Injector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;II",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Landroid/content/pm/IOnChecksumsReadyListener;",
            "Lcom/android/server/pm/ApkChecksums$Injector;",
            ")V"
        }
    .end annotation

    .line 312
    .local p0, "filesToChecksum":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;>;"
    move-object/from16 v8, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v0

    .line 313
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    .end local v0    # "i":I
    .local v1, "size":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 314
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 315
    .local v3, "split":Ljava/lang/String;
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/io/File;

    .line 316
    .local v4, "file":Ljava/io/File;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    .line 317
    .local v5, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    or-int v12, p1, p2

    move-object v10, v3

    move-object v11, v4

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object v15, v5

    move-object/from16 v16, p6

    :try_start_0
    invoke-static/range {v10 .. v16}, Lcom/android/server/pm/ApkChecksums;->getAvailableApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    goto :goto_1

    .line 322
    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 323
    .local v0, "e":Ljava/lang/Throwable;
    const-string v6, "ApkChecksums"

    const-string v7, "Preferred checksum calculation error"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "split":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 328
    .local v10, "startTime":J
    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-wide v6, v10

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/ApkChecksums;->processRequiredChecksums(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V

    .line 330
    return-void
.end method

.method private static getContentDigestAlgos(ZZ)[I
    .locals 3
    .param p0, "needSignatureSha256"    # Z
    .param p1, "needSignatureSha512"    # Z

    .line 747
    const/4 v0, 0x2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 749
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    .line 750
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    .line 751
    new-array v0, v2, [I

    aput v2, v0, v1

    return-object v0

    .line 753
    :cond_1
    new-array v2, v2, [I

    aput v0, v2, v1

    return-object v2

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private static getInstallerChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V
    .locals 17
    .param p0, "split"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "types"    # I
    .param p3, "installerPackageName"    # Ljava/lang/String;
    .param p4, "trustedInstallers"    # [Ljava/security/cert/Certificate;
    .param p6, "injector"    # Lcom/android/server/pm/ApkChecksums$Injector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;",
            "Lcom/android/server/pm/ApkChecksums$Injector;",
            ")V"
        }
    .end annotation

    .line 423
    .local p5, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "ApkChecksums"

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    return-void

    .line 426
    :cond_0
    if-eqz v2, :cond_1

    array-length v0, v2

    if-nez v0, :cond_1

    .line 427
    return-void

    .line 430
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/ApkChecksums;->findDigestsForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 431
    .local v5, "digestsFile":Ljava/io/File;
    if-nez v5, :cond_2

    .line 432
    return-void

    .line 434
    :cond_2
    invoke-static {v5}, Lcom/android/server/pm/ApkChecksums;->findSignatureForDigests(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 437
    .local v6, "signatureFile":Ljava/io/File;
    :try_start_0
    invoke-static {v5}, Lcom/android/server/pm/ApkChecksums;->readChecksums(Ljava/io/File;)[Landroid/content/pm/Checksum;

    move-result-object v0

    .line 441
    .local v0, "digests":[Landroid/content/pm/Checksum;
    if-eqz v6, :cond_6

    .line 442
    nop

    .line 443
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v7

    .line 442
    invoke-static {v0, v7}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;

    move-result-object v7

    .line 444
    .local v7, "certificates":[Ljava/security/cert/Certificate;
    if-eqz v7, :cond_5

    array-length v8, v7

    if-nez v8, :cond_3

    goto :goto_1

    .line 449
    :cond_3
    array-length v8, v7

    new-array v8, v8, [Landroid/content/pm/Signature;

    .line 450
    .local v8, "certs":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .local v9, "i":I
    array-length v10, v7

    .local v10, "size":I
    :goto_0
    if-ge v9, v10, :cond_4

    .line 451
    new-instance v11, Landroid/content/pm/Signature;

    aget-object v12, v7, v9

    invoke-virtual {v12}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v11, v8, v9

    .line 450
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 454
    .end local v9    # "i":I
    .end local v10    # "size":I
    :cond_4
    const/4 v7, 0x0

    .line 455
    .local v7, "pastCerts":[Landroid/content/pm/Signature;
    goto :goto_2

    .line 445
    .end local v8    # "certs":[Landroid/content/pm/Signature;
    .local v7, "certificates":[Ljava/security/cert/Certificate;
    :cond_5
    :goto_1
    const-string v8, "Error validating signature"

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void

    .line 456
    .end local v7    # "certificates":[Ljava/security/cert/Certificate;
    :cond_6
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/ApkChecksums$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 458
    .local v7, "installer":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v7, :cond_7

    .line 459
    const-string v8, "Installer package not found."

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void

    .line 464
    :cond_7
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 465
    .restart local v8    # "certs":[Landroid/content/pm/Signature;
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    move-object v7, v9

    .line 467
    .local v7, "pastCerts":[Landroid/content/pm/Signature;
    :goto_2
    if-eqz v8, :cond_11

    array-length v9, v8

    if-eqz v9, :cond_11

    const/4 v9, 0x0

    aget-object v10, v8, v9

    if-nez v10, :cond_8

    move-object/from16 v2, p0

    move/from16 v14, p2

    goto/16 :goto_7

    .line 474
    :cond_8
    aget-object v10, v8, v9

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    .line 476
    .local v10, "trustedCertBytes":[B
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/ApkChecksums;->convertToSet([Ljava/security/cert/Certificate;)Ljava/util/Set;

    move-result-object v11

    .line 478
    .local v11, "trusted":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    if-eqz v11, :cond_b

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 480
    invoke-static {v8, v11}, Lcom/android/server/pm/ApkChecksums;->isTrusted([Landroid/content/pm/Signature;Ljava/util/Set;)Landroid/content/pm/Signature;

    move-result-object v12

    .line 481
    .local v12, "trustedCert":Landroid/content/pm/Signature;
    if-nez v12, :cond_9

    .line 482
    invoke-static {v7, v11}, Lcom/android/server/pm/ApkChecksums;->isTrusted([Landroid/content/pm/Signature;Ljava/util/Set;)Landroid/content/pm/Signature;

    move-result-object v13

    move-object v12, v13

    .line 484
    :cond_9
    if-nez v12, :cond_a

    .line 485
    return-void

    .line 487
    :cond_a
    invoke-virtual {v12}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v13

    move-object v10, v13

    .line 491
    .end local v12    # "trustedCert":Landroid/content/pm/Signature;
    :cond_b
    array-length v12, v0

    move v13, v9

    :goto_3
    if-ge v13, v12, :cond_e

    aget-object v14, v0, v13

    .line 492
    .local v14, "digest":Landroid/content/pm/Checksum;
    invoke-virtual {v14}, Landroid/content/pm/Checksum;->getType()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ApkChecksum;

    .line 493
    .local v15, "system":Landroid/content/pm/ApkChecksum;
    if-eqz v15, :cond_d

    invoke-virtual {v15}, Landroid/content/pm/ApkChecksum;->getValue()[B

    move-result-object v9

    invoke-virtual {v14}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v2

    invoke-static {v9, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_4

    .line 494
    :cond_c
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "System digest "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/content/pm/Checksum;->getType()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " mismatch, can\'t bind installer-provided digests to the APK."

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .end local v5    # "digestsFile":Ljava/io/File;
    .end local v6    # "signatureFile":Ljava/io/File;
    .end local p0    # "split":Ljava/lang/String;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "types":I
    .end local p3    # "installerPackageName":Ljava/lang/String;
    .end local p4    # "trustedInstallers":[Ljava/security/cert/Certificate;
    .end local p5    # "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .end local p6    # "injector":Lcom/android/server/pm/ApkChecksums$Injector;
    throw v2

    .line 491
    .end local v14    # "digest":Landroid/content/pm/Checksum;
    .end local v15    # "system":Landroid/content/pm/ApkChecksum;
    .restart local v5    # "digestsFile":Ljava/io/File;
    .restart local v6    # "signatureFile":Ljava/io/File;
    .restart local p0    # "split":Ljava/lang/String;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "types":I
    .restart local p3    # "installerPackageName":Ljava/lang/String;
    .restart local p4    # "trustedInstallers":[Ljava/security/cert/Certificate;
    .restart local p5    # "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .restart local p6    # "injector":Lcom/android/server/pm/ApkChecksums$Injector;
    :cond_d
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p4

    const/4 v9, 0x0

    goto :goto_3

    .line 500
    :cond_e
    array-length v2, v0

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v2, :cond_10

    aget-object v12, v0, v9

    .line 501
    .local v12, "digest":Landroid/content/pm/Checksum;
    invoke-virtual {v12}, Landroid/content/pm/Checksum;->getType()I

    move-result v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_6

    move/from16 v14, p2

    :try_start_1
    invoke-static {v13, v14, v3}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 502
    invoke-virtual {v12}, Landroid/content/pm/Checksum;->getType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v15, Landroid/content/pm/ApkChecksum;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v16, v2

    move-object/from16 v2, p0

    :try_start_2
    invoke-direct {v15, v2, v12, v1, v10}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;Landroid/content/pm/Checksum;Ljava/lang/String;[B)V

    invoke-interface {v3, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 501
    :cond_f
    move/from16 v16, v2

    move-object/from16 v2, p0

    .line 500
    .end local v12    # "digest":Landroid/content/pm/Checksum;
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    goto :goto_5

    .line 517
    .end local v0    # "digests":[Landroid/content/pm/Checksum;
    .end local v7    # "pastCerts":[Landroid/content/pm/Signature;
    .end local v8    # "certs":[Landroid/content/pm/Signature;
    .end local v10    # "trustedCertBytes":[B
    .end local v11    # "trusted":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    :catch_0
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_8

    .line 508
    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_9

    .line 506
    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_a

    .line 500
    .restart local v0    # "digests":[Landroid/content/pm/Checksum;
    .restart local v7    # "pastCerts":[Landroid/content/pm/Signature;
    .restart local v8    # "certs":[Landroid/content/pm/Signature;
    .restart local v10    # "trustedCertBytes":[B
    .restart local v11    # "trusted":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    :cond_10
    move-object/from16 v2, p0

    move/from16 v14, p2

    .end local v0    # "digests":[Landroid/content/pm/Checksum;
    .end local v7    # "pastCerts":[Landroid/content/pm/Signature;
    .end local v8    # "certs":[Landroid/content/pm/Signature;
    .end local v10    # "trustedCertBytes":[B
    .end local v11    # "trusted":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    goto :goto_b

    .line 467
    .restart local v0    # "digests":[Landroid/content/pm/Checksum;
    .restart local v7    # "pastCerts":[Landroid/content/pm/Signature;
    .restart local v8    # "certs":[Landroid/content/pm/Signature;
    :cond_11
    move-object/from16 v2, p0

    move/from16 v14, p2

    .line 468
    :goto_7
    const-string v9, "Can\'t obtain certificates."

    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 469
    return-void

    .line 517
    .end local v0    # "digests":[Landroid/content/pm/Checksum;
    .end local v7    # "pastCerts":[Landroid/content/pm/Signature;
    .end local v8    # "certs":[Landroid/content/pm/Signature;
    :catch_3
    move-exception v0

    goto :goto_8

    .line 508
    :catch_4
    move-exception v0

    goto :goto_9

    .line 506
    :catch_5
    move-exception v0

    goto :goto_a

    .line 517
    :catch_6
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v14, p2

    .line 518
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    :goto_8
    const-string v7, "Error encoding trustedInstallers"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 508
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_7
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v14, p2

    :goto_9
    move-object v7, v0

    .line 509
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "Error validating digests. Invalid digests will be removed"

    invoke-static {v4, v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 512
    if-eqz v6, :cond_12

    .line 513
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 516
    :cond_12
    goto :goto_b

    .line 515
    :catch_8
    move-exception v0

    goto :goto_b

    .line 506
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v14, p2

    .line 507
    .local v0, "e":Ljava/io/IOException;
    :goto_a
    const-string v7, "Error reading .digests or .signature"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v0    # "e":Ljava/io/IOException;
    :goto_b
    nop

    .line 520
    :goto_c
    return-void
.end method

.method private static getMessageDigestAlgoForChecksumKind(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 699
    sparse-switch p0, :sswitch_data_0

    .line 709
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid checksum type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :sswitch_0
    const-string v0, "SHA512"

    return-object v0

    .line 705
    :sswitch_1
    const-string v0, "SHA256"

    return-object v0

    .line 703
    :sswitch_2
    const-string v0, "SHA1"

    return-object v0

    .line 701
    :sswitch_3
    const-string v0, "MD5"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getRequiredApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/util/Map;)V
    .locals 5
    .param p0, "split"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "types"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;)V"
        }
    .end annotation

    .line 569
    .local p3, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "filePath":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1, p2, p3}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/android/server/pm/ApkChecksums$1;

    invoke-direct {v3}, Lcom/android/server/pm/ApkChecksums$1;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/apk/VerityBuilder;->generateFsVerityRootHash(Ljava/lang/String;[BLandroid/util/apk/ByteBufferFactory;)[B

    move-result-object v2

    .line 582
    .local v2, "generatedRootHash":[B
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/content/pm/ApkChecksum;

    invoke-direct {v4, p0, v1, v2}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    nop

    .end local v2    # "generatedRootHash":[B
    goto :goto_0

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ApkChecksums"

    const-string v3, "Error calculating WHOLE_MERKLE_ROOT_4K_SHA256"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/4 v1, 0x2

    invoke-static {p3, p0, p1, p2, v1}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    .line 591
    const/4 v1, 0x4

    invoke-static {p3, p0, p1, p2, v1}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    .line 592
    const/16 v1, 0x8

    invoke-static {p3, p0, p1, p2, v1}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    .line 593
    const/16 v1, 0x10

    invoke-static {p3, p0, p1, p2, v1}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    .line 595
    invoke-static {p3, p0, p1, p2}, Lcom/android/server/pm/ApkChecksums;->calculatePartialChecksumsIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;I)V

    .line 596
    return-void
.end method

.method public static isDigestOrDigestSignatureFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 191
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "name":Ljava/lang/String;
    const-string v1, ".digests"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static isRequired(IILjava/util/Map;)Z
    .locals 2
    .param p0, "type"    # I
    .param p1, "types"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;)Z"
        }
    .end annotation

    .line 600
    .local p2, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    and-int v0, p1, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 601
    return v1

    .line 603
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    return v1

    .line 606
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static isTrusted([Landroid/content/pm/Signature;Ljava/util/Set;)Landroid/content/pm/Signature;
    .locals 5
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;)",
            "Landroid/content/pm/Signature;"
        }
    .end annotation

    .line 626
    .local p1, "trusted":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 627
    return-object v0

    .line 629
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 630
    .local v3, "signature":Landroid/content/pm/Signature;
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 631
    return-object v3

    .line 629
    .end local v3    # "signature":Landroid/content/pm/Signature;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 634
    :cond_2
    return-object v0
.end method

.method static synthetic lambda$processRequiredChecksums$0(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V
    .locals 0
    .param p0, "filesToChecksum"    # Ljava/util/List;
    .param p1, "result"    # Ljava/util/List;
    .param p2, "required"    # I
    .param p3, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;
    .param p4, "injector"    # Lcom/android/server/pm/ApkChecksums$Injector;
    .param p5, "startTime"    # J

    .line 351
    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/ApkChecksums;->processRequiredChecksums(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V

    .line 353
    return-void
.end method

.method private static needToWait(Ljava/io/File;ILjava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "types"    # I
    .param p3, "injector"    # Lcom/android/server/pm/ApkChecksums$Injector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;",
            "Lcom/android/server/pm/ApkChecksums$Injector;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    .local p2, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 530
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 531
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 532
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x10

    .line 533
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x20

    .line 534
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x40

    .line 535
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    return v2

    .line 539
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 541
    return v2

    .line 544
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/pm/ApkChecksums$Injector;->getIncrementalManager()Landroid/os/incremental/IncrementalManager;

    move-result-object v3

    .line 545
    .local v3, "manager":Landroid/os/incremental/IncrementalManager;
    const-string v4, "ApkChecksums"

    if-nez v3, :cond_2

    .line 546
    const-string v0, "IncrementalManager is missing."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return v2

    .line 549
    :cond_2
    invoke-virtual {v3, v1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v5

    .line 550
    .local v5, "storage":Landroid/os/incremental/IncrementalStorage;
    if-nez v5, :cond_3

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IncrementalStorage is missing for a path on IncFs: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return v2

    .line 555
    :cond_3
    invoke-virtual {v5, v1}, Landroid/os/incremental/IncrementalStorage;->isFileFullyLoaded(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v0, v2

    return v0
.end method

.method private static processRequiredChecksums(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V
    .locals 19
    .param p2, "required"    # I
    .param p3, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;
    .param p4, "injector"    # Lcom/android/server/pm/ApkChecksums$Injector;
    .param p5, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;>;I",
            "Landroid/content/pm/IOnChecksumsReadyListener;",
            "Lcom/android/server/pm/ApkChecksums$Injector;",
            "J)V"
        }
    .end annotation

    .line 339
    .local p0, "filesToChecksum":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;>;"
    move-object/from16 v9, p0

    move/from16 v10, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, v0, p5

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v11, v0

    .line 340
    .local v11, "timeout":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 341
    .local v12, "allChecksums":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApkChecksum;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v13

    move v14, v0

    .end local v0    # "i":I
    .local v13, "size":I
    .local v14, "i":I
    :goto_1
    const-string v15, "ApkChecksums"

    if-ge v14, v13, :cond_4

    .line 342
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 343
    .local v7, "split":Ljava/lang/String;
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/io/File;

    .line 344
    .local v8, "file":Ljava/io/File;
    move-object/from16 v6, p1

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    .line 347
    .local v5, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    if-eqz v11, :cond_2

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v16, v11

    move/from16 v17, v13

    move/from16 v18, v14

    move-object v11, v5

    move-object v13, v7

    move-object v14, v8

    goto :goto_3

    .line 348
    :cond_2
    :goto_2
    move-object/from16 v4, p4

    :try_start_0
    invoke-static {v8, v10, v5, v4}, Lcom/android/server/pm/ApkChecksums;->needToWait(Ljava/io/File;ILjava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/ApkChecksums$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v9, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v16, v11

    move-object v11, v5

    .end local v5    # "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .local v11, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .local v16, "timeout":Z
    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v17, v13

    move/from16 v18, v14

    move-object v13, v7

    move-object v14, v8

    .end local v7    # "split":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .local v13, "split":Ljava/lang/String;
    .local v14, "file":Ljava/io/File;
    .local v17, "size":I
    .local v18, "i":I
    move-wide/from16 v7, p5

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    return-void

    .line 357
    .end local v16    # "timeout":Z
    .end local v17    # "size":I
    .end local v18    # "i":I
    .restart local v5    # "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .restart local v7    # "split":Ljava/lang/String;
    .restart local v8    # "file":Ljava/io/File;
    .local v11, "timeout":Z
    .local v13, "size":I
    .local v14, "i":I
    :cond_3
    move/from16 v16, v11

    move/from16 v17, v13

    move/from16 v18, v14

    move-object v11, v5

    move-object v13, v7

    move-object v14, v8

    .end local v5    # "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .end local v7    # "split":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .local v11, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .local v13, "split":Ljava/lang/String;
    .local v14, "file":Ljava/io/File;
    .restart local v16    # "timeout":Z
    .restart local v17    # "size":I
    .restart local v18    # "i":I
    invoke-static {v13, v14, v10, v11}, Lcom/android/server/pm/ApkChecksums;->getRequiredApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/util/Map;)V

    .line 359
    :goto_3
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    goto :goto_5

    .line 360
    :catchall_0
    move-exception v0

    goto :goto_4

    .end local v16    # "timeout":Z
    .end local v17    # "size":I
    .end local v18    # "i":I
    .restart local v5    # "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .restart local v7    # "split":Ljava/lang/String;
    .restart local v8    # "file":Ljava/io/File;
    .local v11, "timeout":Z
    .local v13, "size":I
    .local v14, "i":I
    :catchall_1
    move-exception v0

    move/from16 v16, v11

    move/from16 v17, v13

    move/from16 v18, v14

    move-object v11, v5

    move-object v13, v7

    move-object v14, v8

    .line 361
    .end local v5    # "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .end local v7    # "split":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .local v0, "e":Ljava/lang/Throwable;
    .local v11, "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .local v13, "split":Ljava/lang/String;
    .local v14, "file":Ljava/io/File;
    .restart local v16    # "timeout":Z
    .restart local v17    # "size":I
    .restart local v18    # "i":I
    :goto_4
    const-string v1, "Required checksum calculation error"

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v11    # "checksums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/pm/ApkChecksum;>;"
    .end local v13    # "split":Ljava/lang/String;
    .end local v14    # "file":Ljava/io/File;
    :goto_5
    add-int/lit8 v14, v18, 0x1

    move-object/from16 v9, p0

    move/from16 v11, v16

    move/from16 v13, v17

    .end local v18    # "i":I
    .local v14, "i":I
    goto/16 :goto_1

    .end local v16    # "timeout":Z
    .end local v17    # "size":I
    .local v11, "timeout":Z
    .local v13, "size":I
    :cond_4
    move/from16 v16, v11

    move/from16 v17, v13

    move/from16 v18, v14

    .line 366
    .end local v11    # "timeout":Z
    .end local v13    # "size":I
    .end local v14    # "i":I
    .restart local v16    # "timeout":Z
    move-object/from16 v1, p3

    :try_start_2
    invoke-interface {v1, v12}, Landroid/content/pm/IOnChecksumsReadyListener;->onChecksumsReady(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 369
    goto :goto_6

    .line 367
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6
    return-void
.end method

.method private static readChecksums(Ljava/io/File;)[Landroid/content/pm/Checksum;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 230
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcom/android/server/pm/ApkChecksums;->readChecksums(Ljava/io/InputStream;)[Landroid/content/pm/Checksum;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 230
    return-object v1

    .line 229
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static readChecksums(Ljava/io/InputStream;)[Landroid/content/pm/Checksum;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 240
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .local v1, "checksums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Checksum;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 244
    :try_start_1
    invoke-static {v0}, Landroid/content/pm/Checksum;->readFromStream(Ljava/io/DataInputStream;)Landroid/content/pm/Checksum;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    .end local v2    # "i":I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 248
    :cond_0
    nop

    .line 249
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/Checksum;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Checksum;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 249
    return-object v2

    .line 239
    .end local v1    # "checksums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Checksum;>;"
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method public static verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;
    .locals 9
    .param p0, "checksums"    # [Landroid/content/pm/Checksum;
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 264
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {v0, p0}, Lcom/android/server/pm/ApkChecksums;->writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V

    .line 265
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .local v1, "blob":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 268
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lsun/security/pkcs/PKCS7;

    invoke-direct {v0, p1}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    .line 270
    .local v0, "pkcs7":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 271
    .local v2, "certs":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-eqz v3, :cond_3

    .line 275
    invoke-virtual {v0, v1}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v3

    .line 276
    .local v3, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-eqz v4, :cond_2

    .line 280
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v4, "certificates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 282
    .local v7, "signerInfo":Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v7, v0}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v8

    .line 283
    .local v8, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    if-eqz v8, :cond_0

    .line 287
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    .end local v7    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v8    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 284
    .restart local v7    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v8    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    :cond_0
    new-instance v5, Ljava/security/SignatureException;

    const-string v6, "Verification passed, but certification chain is empty."

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 290
    .end local v7    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v8    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/Certificate;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/Certificate;

    return-object v5

    .line 277
    .end local v4    # "certificates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    :cond_2
    new-instance v4, Ljava/security/SignatureException;

    const-string v5, "Verification failed"

    invoke-direct {v4, v5}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    .end local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    :cond_3
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Signature missing certificates"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    .end local v1    # "blob":[B
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public static writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V
    .locals 4
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "checksums"    # [Landroid/content/pm/Checksum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 222
    .local v0, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 223
    .local v3, "checksum":Landroid/content/pm/Checksum;
    invoke-static {v0, v3}, Landroid/content/pm/Checksum;->writeToStream(Ljava/io/DataOutputStream;Landroid/content/pm/Checksum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .end local v3    # "checksum":Landroid/content/pm/Checksum;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 226
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    return-void

    .line 221
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

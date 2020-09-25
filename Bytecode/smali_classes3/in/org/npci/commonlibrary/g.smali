.class public final enum Lin/org/npci/commonlibrary/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lin/org/npci/commonlibrary/g;

.field public static final enum b:Lin/org/npci/commonlibrary/g;

.field public static final enum c:Lin/org/npci/commonlibrary/g;

.field public static final enum d:Lin/org/npci/commonlibrary/g;

.field public static final enum e:Lin/org/npci/commonlibrary/g;

.field public static final enum f:Lin/org/npci/commonlibrary/g;

.field public static final enum g:Lin/org/npci/commonlibrary/g;

.field public static final enum h:Lin/org/npci/commonlibrary/g;

.field private static final synthetic k:[Lin/org/npci/commonlibrary/g;


# instance fields
.field private final i:I

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lin/org/npci/commonlibrary/g;

    const/4 v1, 0x0

    const-string v2, "KEY_CODE_EMPTY"

    const/16 v3, 0x3e9

    const-string v4, "Your organization key is empty. Please provide a organization key."

    invoke-direct {v0, v2, v1, v3, v4}, Lin/org/npci/commonlibrary/g;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lin/org/npci/commonlibrary/g;->a:Lin/org/npci/commonlibrary/g;

    new-instance v0, Lin/org/npci/commonlibrary/g;

    const/4 v2, 0x1

    const-string v3, "KEY_CODE_INVALID"

    const/16 v4, 0x3ea

    const-string v5, "Your organization key is invalid. Please contact your system administrator or UPI support team."

    invoke-direct {v0, v3, v2, v4, v5}, Lin/org/npci/commonlibrary/g;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lin/org/npci/commonlibrary/g;->b:Lin/org/npci/commonlibrary/g;

    new-instance v0, Lin/org/npci/commonlibrary/g;

    const/4 v3, 0x2

    const-string v4, "PUBLICKEY_NOT_FOUND"

    const/16 v5, 0x3eb

    const-string v6, "Public key file not found please contact your system administrator UPI support team"

    invoke-direct {v0, v4, v3, v5, v6}, Lin/org/npci/commonlibrary/g;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lin/org/npci/commonlibrary/g;->c:Lin/org/npci/commonlibrary/g;

    new-instance v0, Lin/org/npci/commonlibrary/g;

    const/4 v4, 0x3

    const-string v5, "PARSER_MISCONFIG"

    const/16 v6, 0x3ec

    const-string v7, "XML Parser configuration error.Keys.xml may not be formatted correctly."

    invoke-direct {v0, v5, v4, v6, v7}, Lin/org/npci/commonlibrary/g;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lin/org/npci/commonlibrary/g;->d:Lin/org/npci/commonlibrary/g;

    new-instance v0, Lin/org/npci/commonlibrary/g;

    const/4 v5, 0x4

    const-string v6, "XML_PATH_ERROR"

    const/16 v7, 0x3ed

    const-string v8, "XML File is not found or cannot be read."

    invoke-direct {v0, v6, v5, v7, v8}, Lin/org/npci/commonlibrary/g;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lin/org/npci/commonlibrary/g;->e:Lin/org/npci/commonlibrary/g;

    new-instance v0, Lin/org/npci/commonlibrary/g;

    const/4 v6, 0x5

    const-string v7, "KEYS_NOT_VALID"

    const/16 v8, 0x3ee

    const-string v9, "Keys are not valid. Please contact your system administrator UPI support team"

    invoke-direct {v0, v7, v6, v8, v9}, Lin/org/npci/commonlibrary/g;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lin/org/npci/commonlibrary/g;->f:Lin/org/npci/commonlibrary/g;

    new-instance v0, Lin/org/npci/commonlibrary/g;

    const/4 v7, 0x6

    const-string v8, "UNKNOWN_ERROR"

    const/16 v9, 0x3ef

    const-string v10, "Unknown error occurred."

    invoke-direct {v0, v8, v7, v9, v10}, Lin/org/npci/commonlibrary/g;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lin/org/npci/commonlibrary/g;->g:Lin/org/npci/commonlibrary/g;

    new-instance v0, Lin/org/npci/commonlibrary/g;

    const/4 v8, 0x7

    const-string v9, "TRUST_NOT_VALID"

    const/16 v10, 0x3f0

    const-string v11, "Trust is not valid"

    invoke-direct {v0, v9, v8, v10, v11}, Lin/org/npci/commonlibrary/g;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lin/org/npci/commonlibrary/g;->h:Lin/org/npci/commonlibrary/g;

    const/16 v9, 0x8

    new-array v9, v9, [Lin/org/npci/commonlibrary/g;

    sget-object v10, Lin/org/npci/commonlibrary/g;->a:Lin/org/npci/commonlibrary/g;

    aput-object v10, v9, v1

    sget-object v1, Lin/org/npci/commonlibrary/g;->b:Lin/org/npci/commonlibrary/g;

    aput-object v1, v9, v2

    sget-object v1, Lin/org/npci/commonlibrary/g;->c:Lin/org/npci/commonlibrary/g;

    aput-object v1, v9, v3

    sget-object v1, Lin/org/npci/commonlibrary/g;->d:Lin/org/npci/commonlibrary/g;

    aput-object v1, v9, v4

    sget-object v1, Lin/org/npci/commonlibrary/g;->e:Lin/org/npci/commonlibrary/g;

    aput-object v1, v9, v5

    sget-object v1, Lin/org/npci/commonlibrary/g;->f:Lin/org/npci/commonlibrary/g;

    aput-object v1, v9, v6

    sget-object v1, Lin/org/npci/commonlibrary/g;->g:Lin/org/npci/commonlibrary/g;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lin/org/npci/commonlibrary/g;->k:[Lin/org/npci/commonlibrary/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lin/org/npci/commonlibrary/g;->i:I

    iput-object p4, p0, Lin/org/npci/commonlibrary/g;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lin/org/npci/commonlibrary/g;
    .locals 1

    const-class v0, Lin/org/npci/commonlibrary/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/org/npci/commonlibrary/g;

    return-object p0
.end method

.method public static values()[Lin/org/npci/commonlibrary/g;
    .locals 1

    sget-object v0, Lin/org/npci/commonlibrary/g;->k:[Lin/org/npci/commonlibrary/g;

    invoke-virtual {v0}, [Lin/org/npci/commonlibrary/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/org/npci/commonlibrary/g;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/org/npci/commonlibrary/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lin/org/npci/commonlibrary/g;->i:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lin/org/npci/commonlibrary/g;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lin/org/npci/commonlibrary/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

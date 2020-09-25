.class public final Lo/sha1;
.super Lo/hash;
.source ""


# instance fields
.field private final zza:Lo/createCipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/hash;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/createCipher;)V
    .locals 1

    .line 2001
    invoke-direct {p0}, Lo/sha1;-><init>()V

    .line 3004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2002
    iput-object p1, p0, Lo/hash;->email:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 2003
    check-cast p2, Lo/createCipher;

    iput-object p2, p0, Lo/sha1;->zza:Lo/createCipher;

    return-void

    .line 4002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getMultiFactorInfo()Lo/createCipher;
    .locals 1

    .line 1005
    iget-object v0, p0, Lo/sha1;->zza:Lo/createCipher;

    return-object v0
.end method

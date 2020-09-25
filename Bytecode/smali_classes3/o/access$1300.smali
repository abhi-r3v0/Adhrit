.class public final Lo/access$1300;
.super Lo/createInstanceIdFrom;
.source ""


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/createInstanceIdFrom;-><init>()V

    .line 1004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Given String is empty or null"

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lo/hash;->email:Ljava/lang/String;

    .line 2004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iput-object p2, p0, Lo/access$1300;->zza:Ljava/lang/String;

    return-void

    .line 2005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getPreviousEmail()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/access$1300;->zza:Ljava/lang/String;

    return-object v0
.end method

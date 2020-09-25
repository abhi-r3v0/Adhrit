.class public abstract Lo/createInstanceIdFrom;
.super Lo/hash;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/hash;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-super {p0}, Lo/hash;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPreviousEmail()Ljava/lang/String;
.end method

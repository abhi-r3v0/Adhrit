.class final Lo/onRestoreInstanceState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageHelper;


# instance fields
.field private final extraCallback:Lo/AppCompatImageHelper;

.field private final onPostMessage:Lo/AppCompatImageHelper;


# direct methods
.method constructor <init>(Lo/AppCompatImageHelper;Lo/AppCompatImageHelper;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lo/onRestoreInstanceState;->extraCallback:Lo/AppCompatImageHelper;

    .line 15
    iput-object p2, p0, Lo/onRestoreInstanceState;->onPostMessage:Lo/AppCompatImageHelper;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 24
    instance-of v0, p1, Lo/onRestoreInstanceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 25
    check-cast p1, Lo/onRestoreInstanceState;

    .line 26
    iget-object v0, p0, Lo/onRestoreInstanceState;->extraCallback:Lo/AppCompatImageHelper;

    iget-object v2, p1, Lo/onRestoreInstanceState;->extraCallback:Lo/AppCompatImageHelper;

    invoke-interface {v0, v2}, Lo/AppCompatImageHelper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onRestoreInstanceState;->onPostMessage:Lo/AppCompatImageHelper;

    iget-object p1, p1, Lo/onRestoreInstanceState;->onPostMessage:Lo/AppCompatImageHelper;

    invoke-interface {v0, p1}, Lo/AppCompatImageHelper;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 33
    iget-object v0, p0, Lo/onRestoreInstanceState;->extraCallback:Lo/AppCompatImageHelper;

    invoke-interface {v0}, Lo/AppCompatImageHelper;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-object v1, p0, Lo/onRestoreInstanceState;->onPostMessage:Lo/AppCompatImageHelper;

    invoke-interface {v1}, Lo/AppCompatImageHelper;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lo/onRestoreInstanceState;->extraCallback:Lo/AppCompatImageHelper;

    invoke-interface {v0, p1}, Lo/AppCompatImageHelper;->onNavigationEvent(Ljava/security/MessageDigest;)V

    .line 46
    iget-object v0, p0, Lo/onRestoreInstanceState;->onPostMessage:Lo/AppCompatImageHelper;

    invoke-interface {v0, p1}, Lo/AppCompatImageHelper;->onNavigationEvent(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataCacheKey{sourceKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/onRestoreInstanceState;->extraCallback:Lo/AppCompatImageHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/onRestoreInstanceState;->onPostMessage:Lo/AppCompatImageHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

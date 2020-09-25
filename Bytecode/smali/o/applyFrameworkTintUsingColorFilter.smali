.class public final Lo/applyFrameworkTintUsingColorFilter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageHelper;


# instance fields
.field public final onMessageChannelReady:Lo/postOrRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postOrRun<",
            "Lo/setInternalImageTint<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lo/setDropDownAlwaysVisible;

    invoke-direct {v0}, Lo/setDropDownAlwaysVisible;-><init>()V

    iput-object v0, p0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 32
    instance-of v0, p1, Lo/applyFrameworkTintUsingColorFilter;

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lo/applyFrameworkTintUsingColorFilter;

    .line 34
    iget-object v0, p0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    iget-object p1, p1, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 41
    iget-object v0, p0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 6

    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v1}, Lo/fromMediaItemList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 47
    iget-object v1, p0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    .line 1390
    iget-object v1, v1, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 47
    check-cast v1, Lo/setInternalImageTint;

    .line 48
    iget-object v3, p0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    .line 1399
    iget-object v3, v3, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v3, v2

    .line 2110
    iget-object v3, v1, Lo/setInternalImageTint;->onNavigationEvent:Lo/setInternalImageTint$onMessageChannelReady;

    .line 2115
    iget-object v4, v1, Lo/setInternalImageTint;->onPostMessage:[B

    if-nez v4, :cond_0

    .line 2116
    iget-object v4, v1, Lo/setInternalImageTint;->ICustomTabsCallback:Ljava/lang/String;

    sget-object v5, Lo/AppCompatImageHelper;->onNavigationEvent:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, v1, Lo/setInternalImageTint;->onPostMessage:[B

    .line 2118
    :cond_0
    iget-object v1, v1, Lo/setInternalImageTint;->onPostMessage:[B

    .line 2110
    invoke-interface {v3, v1, v2, p1}, Lo/setInternalImageTint$onMessageChannelReady;->onPostMessage([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Options{values="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

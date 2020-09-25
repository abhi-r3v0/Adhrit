.class public final Lo/expectMap$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/expectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:Lo/matches;

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lo/expectMap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "*."

    .line 270
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "http://"

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/isFullyInitialized;->extraCallback(Ljava/lang/String;)Lo/isFullyInitialized;

    move-result-object p1

    .line 1486
    iget-object p1, p1, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/isFullyInitialized;->extraCallback(Ljava/lang/String;)Lo/isFullyInitialized;

    move-result-object p1

    .line 2486
    iget-object p1, p1, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 272
    :goto_0
    iput-object p1, p0, Lo/expectMap$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    const-string p1, "sha1/"

    .line 273
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iput-object p1, p0, Lo/expectMap$onPostMessage;->onPostMessage:Ljava/lang/String;

    const/4 p1, 0x5

    .line 275
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/matches;->extraCallback(Ljava/lang/String;)Lo/matches;

    move-result-object p1

    iput-object p1, p0, Lo/expectMap$onPostMessage;->onNavigationEvent:Lo/matches;

    goto :goto_1

    :cond_1
    const-string p1, "sha256/"

    .line 276
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iput-object p1, p0, Lo/expectMap$onPostMessage;->onPostMessage:Ljava/lang/String;

    const/4 p1, 0x7

    .line 278
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/matches;->extraCallback(Ljava/lang/String;)Lo/matches;

    move-result-object p1

    iput-object p1, p0, Lo/expectMap$onPostMessage;->onNavigationEvent:Lo/matches;

    .line 283
    :goto_1
    iget-object p1, p0, Lo/expectMap$onPostMessage;->onNavigationEvent:Lo/matches;

    if-eqz p1, :cond_2

    return-void

    .line 284
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pins must be base64: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pins must start with \'sha256/\' or \'sha1/\': "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 300
    instance-of v0, p1, Lo/expectMap$onPostMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/expectMap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    check-cast p1, Lo/expectMap$onPostMessage;

    iget-object v1, p1, Lo/expectMap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/expectMap$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object v1, p1, Lo/expectMap$onPostMessage;->onPostMessage:Ljava/lang/String;

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/expectMap$onPostMessage;->onNavigationEvent:Lo/matches;

    iget-object p1, p1, Lo/expectMap$onPostMessage;->onNavigationEvent:Lo/matches;

    .line 303
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 308
    iget-object v0, p0, Lo/expectMap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 309
    iget-object v1, p0, Lo/expectMap$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 310
    iget-object v1, p0, Lo/expectMap$onPostMessage;->onNavigationEvent:Lo/matches;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/expectMap$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/expectMap$onPostMessage;->onNavigationEvent:Lo/matches;

    invoke-virtual {v1}, Lo/matches;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

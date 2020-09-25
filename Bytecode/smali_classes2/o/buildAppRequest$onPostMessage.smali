.class public final Lo/buildAppRequest$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/buildAppRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/buildAppRequest$onPostMessage$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

.field public extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

.field public onNavigationEvent:Z

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lo/buildAppRequest$onPostMessage$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/buildAppRequest$onPostMessage$extraCallback;-><init>(B)V

    iput-object v0, p0, Lo/buildAppRequest$onPostMessage;->ICustomTabsCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    .line 143
    iput-object v0, p0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    .line 144
    iput-boolean v1, p0, Lo/buildAppRequest$onPostMessage;->onNavigationEvent:Z

    if-eqz p1, :cond_0

    .line 148
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/buildAppRequest$onPostMessage;->onPostMessage:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1890
    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;I)Lo/buildAppRequest$onPostMessage;
    .locals 2

    .line 221
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 7361
    new-instance v0, Lo/buildAppRequest$onPostMessage$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/buildAppRequest$onPostMessage$extraCallback;-><init>(B)V

    .line 7362
    iget-object v1, p0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iput-object v0, v1, Lo/buildAppRequest$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iput-object v0, p0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    .line 6374
    iput-object p2, v0, Lo/buildAppRequest$onPostMessage$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 6375
    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lo/buildAppRequest$onPostMessage$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;J)Lo/buildAppRequest$onPostMessage;
    .locals 1

    .line 231
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 9361
    new-instance p3, Lo/buildAppRequest$onPostMessage$extraCallback;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lo/buildAppRequest$onPostMessage$extraCallback;-><init>(B)V

    .line 9362
    iget-object v0, p0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iput-object p3, v0, Lo/buildAppRequest$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iput-object p3, p0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    .line 8374
    iput-object p2, p3, Lo/buildAppRequest$onPostMessage$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 8375
    check-cast p1, Ljava/lang/String;

    iput-object p1, p3, Lo/buildAppRequest$onPostMessage$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;
    .locals 2

    .line 3361
    new-instance v0, Lo/buildAppRequest$onPostMessage$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/buildAppRequest$onPostMessage$extraCallback;-><init>(B)V

    .line 3362
    iget-object v1, p0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iput-object v0, v1, Lo/buildAppRequest$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iput-object v0, p0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    .line 2374
    iput-object p2, v0, Lo/buildAppRequest$onPostMessage$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 2375
    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lo/buildAppRequest$onPostMessage$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Z)Lo/buildAppRequest$onPostMessage;
    .locals 2

    .line 181
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    .line 5361
    new-instance v0, Lo/buildAppRequest$onPostMessage$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/buildAppRequest$onPostMessage$extraCallback;-><init>(B)V

    .line 5362
    iget-object v1, p0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iput-object v0, v1, Lo/buildAppRequest$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iput-object v0, p0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    .line 4374
    iput-object p2, v0, Lo/buildAppRequest$onPostMessage$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 4375
    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lo/buildAppRequest$onPostMessage$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 334
    iget-boolean v0, p0, Lo/buildAppRequest$onPostMessage;->onNavigationEvent:Z

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lo/buildAppRequest$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    iget-object v2, p0, Lo/buildAppRequest$onPostMessage;->ICustomTabsCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iget-object v2, v2, Lo/buildAppRequest$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_4

    .line 340
    iget-object v4, v2, Lo/buildAppRequest$onPostMessage$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_3

    .line 342
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v3, v2, Lo/buildAppRequest$onPostMessage$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 346
    iget-object v3, v2, Lo/buildAppRequest$onPostMessage$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v4, :cond_2

    .line 348
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 350
    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 351
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, ", "

    .line 339
    :cond_3
    iget-object v2, v2, Lo/buildAppRequest$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    .line 357
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lo/trackApiError$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/trackApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private extraCallback:I

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:I

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 129
    invoke-direct {p0, v0, p1, p2}, Lo/trackApiError$onMessageChannelReady;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lo/trackApiError$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 134
    iput p2, p0, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent:I

    .line 135
    iput p3, p0, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady:I

    .line 136
    iput v0, p0, Lo/trackApiError$onMessageChannelReady;->extraCallback:I

    return-void
.end method

.method private onPostMessage()V
    .locals 2

    .line 174
    iget v0, p0, Lo/trackApiError$onMessageChannelReady;->extraCallback:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateNewId() must be called before retrieving ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 144
    iget v0, p0, Lo/trackApiError$onMessageChannelReady;->extraCallback:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady:I

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lo/trackApiError$onMessageChannelReady;->extraCallback:I

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/trackApiError$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/trackApiError$onMessageChannelReady;->extraCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/trackApiError$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 155
    invoke-direct {p0}, Lo/trackApiError$onMessageChannelReady;->onPostMessage()V

    .line 156
    iget v0, p0, Lo/trackApiError$onMessageChannelReady;->extraCallback:I

    return v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 169
    invoke-direct {p0}, Lo/trackApiError$onMessageChannelReady;->onPostMessage()V

    .line 170
    iget-object v0, p0, Lo/trackApiError$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

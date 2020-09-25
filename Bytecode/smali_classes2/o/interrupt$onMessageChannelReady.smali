.class final Lo/interrupt$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sendAuthHelper$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/interrupt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private onMessageChannelReady:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object p1, p0, Lo/interrupt$onMessageChannelReady;->onMessageChannelReady:Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;B)V
    .locals 0

    .line 522
    invoke-direct {p0, p1}, Lo/interrupt$onMessageChannelReady;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/io/InputStream;
    .locals 2

    .line 532
    iget-object v0, p0, Lo/interrupt$onMessageChannelReady;->onMessageChannelReady:Ljava/io/InputStream;

    const/4 v1, 0x0

    .line 533
    iput-object v1, p0, Lo/interrupt$onMessageChannelReady;->onMessageChannelReady:Ljava/io/InputStream;

    return-object v0
.end method

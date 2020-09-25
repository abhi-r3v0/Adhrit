.class final Lo/getAudioStream$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lo/getAudioStream$1;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 332
    iget-object v0, p0, Lo/getAudioStream$1;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lo/getAudioStream;->onNavigationEvent(Ljava/util/ArrayList;I)V

    return-void
.end method

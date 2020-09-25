.class final Lo/createButton$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createMultiAutoCompleteTextView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createButton;->extraCallback(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/createSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/createMultiAutoCompleteTextView<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lo/createButton$5;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)V
    .locals 1

    .line 1503
    invoke-static {}, Lo/createButton;->onMessageChannelReady()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lo/createButton$5;->onMessageChannelReady:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

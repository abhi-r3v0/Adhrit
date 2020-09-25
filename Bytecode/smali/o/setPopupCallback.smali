.class public Lo/setPopupCallback;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setPopupCallback;->extraCallback:Ljava/util/Map;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lo/setPopupCallback;->onMessageChannelReady:Z

    return-void
.end method

.class final Lo/AFSensorManager$4$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPageMargin;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AFSensorManager$4;-><init>(Lo/getPathName;Lo/onAppOpenAttributionNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPageMargin<",
        "[B>;"
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/AFSensorManager$4;


# direct methods
.method constructor <init>(Lo/AFSensorManager$4;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lo/AFSensorManager$4$2;->onMessageChannelReady:Lo/AFSensorManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic extraCallback(Ljava/lang/Object;)V
    .locals 1

    .line 37
    check-cast p1, [B

    .line 1040
    iget-object v0, p0, Lo/AFSensorManager$4$2;->onMessageChannelReady:Lo/AFSensorManager$4;

    .line 1050
    iget-object v0, v0, Lo/AFSensorManager$4;->extraCallback:Lo/AFSensorManager$4$onPostMessage;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

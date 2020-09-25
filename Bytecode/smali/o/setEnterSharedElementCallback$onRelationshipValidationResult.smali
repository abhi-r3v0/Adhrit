.class final Lo/setEnterSharedElementCallback$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setEnterSharedElementCallback;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setEnterSharedElementCallback;


# direct methods
.method constructor <init>(Lo/setEnterSharedElementCallback;)V
    .locals 0

    iput-object p1, p0, Lo/setEnterSharedElementCallback$onRelationshipValidationResult;->onMessageChannelReady:Lo/setEnterSharedElementCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lo/setEnterSharedElementCallback$onRelationshipValidationResult;->onMessageChannelReady:Lo/setEnterSharedElementCallback;

    invoke-static {v0}, Lo/setEnterSharedElementCallback;->onPostMessage(Lo/setEnterSharedElementCallback;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void
.end method

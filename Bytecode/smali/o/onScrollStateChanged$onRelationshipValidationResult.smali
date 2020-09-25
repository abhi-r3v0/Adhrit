.class final Lo/onScrollStateChanged$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onScrollStateChanged;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic onPostMessage:Lo/onScrollStateChanged;


# direct methods
.method constructor <init>(Lo/onScrollStateChanged;)V
    .locals 0

    iput-object p1, p0, Lo/onScrollStateChanged$onRelationshipValidationResult;->onPostMessage:Lo/onScrollStateChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lo/onScrollStateChanged$onRelationshipValidationResult;->onPostMessage:Lo/onScrollStateChanged;

    invoke-static {v0}, Lo/onScrollStateChanged;->onMessageChannelReady(Lo/onScrollStateChanged;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 87
    iget-object v0, p0, Lo/onScrollStateChanged$onRelationshipValidationResult;->onPostMessage:Lo/onScrollStateChanged;

    invoke-static {v0}, Lo/onScrollStateChanged;->onMessageChannelReady(Lo/onScrollStateChanged;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    new-instance v1, Lo/onScrollStateChanged$onRelationshipValidationResult$2;

    invoke-direct {v1, p0}, Lo/onScrollStateChanged$onRelationshipValidationResult$2;-><init>(Lo/onScrollStateChanged$onRelationshipValidationResult;)V

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    .line 1903
    iget-object v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1904
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

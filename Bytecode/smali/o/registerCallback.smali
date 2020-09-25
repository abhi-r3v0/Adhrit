.class public final Lo/registerCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lo/onChooseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/registerCallback$onNavigationEvent;,
        Lo/registerCallback$onPostMessage;,
        Lo/registerCallback$onMessageChannelReady;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityChooserView;",
            "Ljava/util/List<",
            "Landroidx/databinding/ViewDataBinding$4;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

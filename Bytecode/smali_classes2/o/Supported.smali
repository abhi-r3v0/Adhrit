.class final Lo/Supported;
.super Ljava/lang/Object;


# instance fields
.field public final onMessageChannelReady:Lo/SuggestedAmountJsonAdapter;

.field public final onNavigationEvent:Lo/Supported$$Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Supported$$Parcelable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getSelected;Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Supported$$Parcelable<",
            "TT;>;",
            "Lo/SuggestedAmountJsonAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/Supported;->onNavigationEvent:Lo/Supported$$Parcelable;

    iput-object p3, p0, Lo/Supported;->onMessageChannelReady:Lo/SuggestedAmountJsonAdapter;

    return-void
.end method

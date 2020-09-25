.class final Lo/getPhoneNumbers;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/RefundAccount$$Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RefundAccount$$Parcelable<",
            "*>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/removeBackgroundStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/RefundAccount$$Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RefundAccount$$Parcelable<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    iput-object v0, p0, Lo/getPhoneNumbers;->onNavigationEvent:Lo/removeBackgroundStateChangeListener;

    .line 3
    iput-object p1, p0, Lo/getPhoneNumbers;->ICustomTabsCallback:Lo/RefundAccount$$Parcelable;

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/removeBackgroundStateChangeListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lo/getPhoneNumbers;->onNavigationEvent:Lo/removeBackgroundStateChangeListener;

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/RefundAccount$$Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/RefundAccount$$Parcelable<",
            "*>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lo/getPhoneNumbers;->ICustomTabsCallback:Lo/RefundAccount$$Parcelable;

    return-object v0
.end method

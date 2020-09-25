.class public final Lo/getCreditScore;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final extraCallback:Lo/getReminder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReminder<",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "*>;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/getMismatchDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getMismatchDetails<",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getMismatchDetails;Lo/getReminder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMismatchDetails<",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "*>;",
            "Lo/getReminder<",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getCreditScore;->onMessageChannelReady:Lo/getMismatchDetails;

    .line 3
    iput-object p2, p0, Lo/getCreditScore;->extraCallback:Lo/getReminder;

    return-void
.end method

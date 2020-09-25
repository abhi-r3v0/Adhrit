.class public Lo/getId;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getId$extraCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/waitForCustomerUserId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:J

.field public final onNavigationEvent:Lo/setPreinstallAttribution;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    iput-object p1, p0, Lo/getId;->ICustomTabsCallback:Lo/waitForCustomerUserId;

    .line 1032
    iput-object p2, p0, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    const-wide/16 p1, 0x0

    .line 1033
    iput-wide p1, p0, Lo/getId;->extraCallback:J

    return-void
.end method

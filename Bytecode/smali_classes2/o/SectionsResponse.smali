.class final Lo/SectionsResponse;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field final onMessageChannelReady:I

.field final onNavigationEvent:I


# direct methods
.method constructor <init>(Lo/ReferralBottomSheetBackgroundJsonAdapter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lo/SectionsResponse;->onNavigationEvent:I

    iput p3, p0, Lo/SectionsResponse;->onMessageChannelReady:I

    return-void
.end method

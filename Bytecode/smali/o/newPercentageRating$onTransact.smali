.class Lo/newPercentageRating$onTransact;
.super Lo/newPercentageRating$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/newPercentageRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onTransact"
.end annotation


# static fields
.field static final onMessageChannelReady:Lo/newPercentageRating$onTransact;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 253
    new-instance v0, Lo/newPercentageRating$onTransact;

    invoke-direct {v0}, Lo/newPercentageRating$onTransact;-><init>()V

    sput-object v0, Lo/newPercentageRating$onTransact;->onMessageChannelReady:Lo/newPercentageRating$onTransact;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0}, Lo/newPercentageRating$onPostMessage;-><init>(Lo/newPercentageRating$onNavigationEvent;)V

    return-void
.end method


# virtual methods
.method protected onMessageChannelReady()Z
    .locals 2

    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lo/fromRating;->onPostMessage(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

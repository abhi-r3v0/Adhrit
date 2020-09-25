.class Lo/newPercentageRating$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/newPercentageRating$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/newPercentageRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# static fields
.field static final onNavigationEvent:Lo/newPercentageRating$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Lo/newPercentageRating$onMessageChannelReady;

    invoke-direct {v0}, Lo/newPercentageRating$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/newPercentageRating$onMessageChannelReady;->onNavigationEvent:Lo/newPercentageRating$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostMessage(Ljava/lang/CharSequence;II)I
    .locals 2

    add-int/2addr p3, p2

    const/4 v0, 0x2

    const/4 v1, 0x2

    :goto_0
    if-ge p2, p3, :cond_0

    if-ne v1, v0, :cond_0

    .line 185
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    invoke-static {v1}, Lo/newPercentageRating;->extraCallback(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

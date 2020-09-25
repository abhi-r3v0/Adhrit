.class Lo/newPercentageRating$ICustomTabsCallback;
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
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field static final ICustomTabsCallback:Lo/newPercentageRating$ICustomTabsCallback;


# instance fields
.field private final onMessageChannelReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 235
    new-instance v0, Lo/newPercentageRating$ICustomTabsCallback;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/newPercentageRating$ICustomTabsCallback;-><init>(Z)V

    sput-object v0, Lo/newPercentageRating$ICustomTabsCallback;->ICustomTabsCallback:Lo/newPercentageRating$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-boolean p1, p0, Lo/newPercentageRating$ICustomTabsCallback;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public onPostMessage(Ljava/lang/CharSequence;II)I
    .locals 4

    add-int/2addr p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge p2, p3, :cond_3

    .line 208
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v3

    invoke-static {v3}, Lo/newPercentageRating;->ICustomTabsCallback(I)I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v3, v2, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    iget-boolean v1, p0, Lo/newPercentageRating$ICustomTabsCallback;->onMessageChannelReady:Z

    if-nez v1, :cond_2

    return v2

    .line 210
    :cond_1
    iget-boolean v1, p0, Lo/newPercentageRating$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    .line 226
    iget-boolean p1, p0, Lo/newPercentageRating$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0

    :cond_5
    const/4 p1, 0x2

    return p1
.end method

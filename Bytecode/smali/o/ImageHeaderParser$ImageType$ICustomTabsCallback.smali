.class final Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ImageHeaderParser$ImageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final onMessageChannelReady:Z

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    iput p1, p0, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->onPostMessage:I

    .line 829
    iput-boolean p2, p0, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 830
    iput p3, p0, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->ICustomTabsCallback:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;)Z
    .locals 0

    .line 821
    iget-boolean p0, p0, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->onMessageChannelReady:Z

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;)I
    .locals 0

    .line 821
    iget p0, p0, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->onPostMessage:I

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;)I
    .locals 0

    .line 821
    iget p0, p0, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->ICustomTabsCallback:I

    return p0
.end method

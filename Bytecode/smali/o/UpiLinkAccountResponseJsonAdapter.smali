.class final Lo/UpiLinkAccountResponseJsonAdapter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:F

.field public final asBinder:F

.field public final asInterface:I

.field public final extraCallback:F

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:F

.field public final onTransact:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/high16 v8, -0x80000000

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 36
    invoke-direct/range {v0 .. v9}, Lo/UpiLinkAccountResponseJsonAdapter;-><init>(Ljava/lang/String;FFIIFFIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFIIFFIF)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lo/UpiLinkAccountResponseJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    .line 59
    iput p2, p0, Lo/UpiLinkAccountResponseJsonAdapter;->extraCallback:F

    .line 60
    iput p3, p0, Lo/UpiLinkAccountResponseJsonAdapter;->onPostMessage:F

    .line 61
    iput p4, p0, Lo/UpiLinkAccountResponseJsonAdapter;->onNavigationEvent:I

    .line 62
    iput p5, p0, Lo/UpiLinkAccountResponseJsonAdapter;->onMessageChannelReady:I

    .line 63
    iput p6, p0, Lo/UpiLinkAccountResponseJsonAdapter;->asBinder:F

    .line 64
    iput p7, p0, Lo/UpiLinkAccountResponseJsonAdapter;->ICustomTabsCallback$Stub:F

    .line 65
    iput p8, p0, Lo/UpiLinkAccountResponseJsonAdapter;->asInterface:I

    .line 66
    iput p9, p0, Lo/UpiLinkAccountResponseJsonAdapter;->onTransact:F

    return-void
.end method

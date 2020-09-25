.class public Lo/onMeasureExactFormat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/getPopupTheme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPopupTheme<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lo/getPopupTheme;

    invoke-direct {v0}, Lo/getPopupTheme;-><init>()V

    iput-object v0, p0, Lo/onMeasureExactFormat;->onMessageChannelReady:Lo/getPopupTheme;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lo/onMeasureExactFormat;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lo/getPopupTheme;

    invoke-direct {v0}, Lo/getPopupTheme;-><init>()V

    iput-object v0, p0, Lo/onMeasureExactFormat;->onMessageChannelReady:Lo/getPopupTheme;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lo/onMeasureExactFormat;->ICustomTabsCallback:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lo/onMeasureExactFormat;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onNavigationEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lo/onMeasureExactFormat;->ICustomTabsCallback:Ljava/lang/Object;

    return-object v0
.end method

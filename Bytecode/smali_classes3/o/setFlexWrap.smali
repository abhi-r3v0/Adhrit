.class final Lo/setFlexWrap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:J

.field private final synthetic extraCallback:Lo/setChipEndPadding;


# direct methods
.method constructor <init>(Lo/setChipEndPadding;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setFlexWrap;->extraCallback:Lo/setChipEndPadding;

    iput-wide p2, p0, Lo/setFlexWrap;->ICustomTabsCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/setFlexWrap;->extraCallback:Lo/setChipEndPadding;

    invoke-virtual {v0}, Lo/pathToString;->onNavigationEvent()Lo/zzbfb;

    move-result-object v0

    iget-wide v1, p0, Lo/setFlexWrap;->ICustomTabsCallback:J

    invoke-virtual {v0, v1, v2}, Lo/zzbfb;->ICustomTabsCallback(J)V

    .line 3
    iget-object v0, p0, Lo/setFlexWrap;->extraCallback:Lo/setChipEndPadding;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/setChipEndPadding;->onNavigationEvent:Lo/setCloseIconEndPadding;

    return-void
.end method

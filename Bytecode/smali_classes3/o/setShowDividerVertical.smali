.class final Lo/setShowDividerVertical;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/setChipEndPadding;


# direct methods
.method constructor <init>(Lo/setChipEndPadding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setShowDividerVertical;->extraCallback:Lo/setChipEndPadding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/setShowDividerVertical;->extraCallback:Lo/setChipEndPadding;

    invoke-static {v0}, Lo/setChipEndPadding;->extraCallback(Lo/setChipEndPadding;)Lo/setCloseIconEndPadding;

    move-result-object v1

    iput-object v1, v0, Lo/setChipEndPadding;->onNavigationEvent:Lo/setCloseIconEndPadding;

    return-void
.end method

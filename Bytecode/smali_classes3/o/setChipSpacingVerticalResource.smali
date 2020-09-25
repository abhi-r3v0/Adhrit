.class final Lo/setChipSpacingVerticalResource;
.super Lo/zzft;
.source ""


# instance fields
.field private final synthetic extraCallback:Lo/setChipSpacingResource;


# direct methods
.method constructor <init>(Lo/setChipSpacingResource;Lo/setChipStrokeWidthResource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipSpacingVerticalResource;->extraCallback:Lo/setChipSpacingResource;

    invoke-direct {p0, p2}, Lo/zzft;-><init>(Lo/setChipStrokeWidthResource;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 2
    iget-object v0, p0, Lo/setChipSpacingVerticalResource;->extraCallback:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->onNavigationEvent(Lo/setChipSpacingResource;)V

    return-void
.end method

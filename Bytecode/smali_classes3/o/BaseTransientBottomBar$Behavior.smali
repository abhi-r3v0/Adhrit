.class final Lo/BaseTransientBottomBar$Behavior;
.super Lo/zzft;
.source ""


# instance fields
.field private final synthetic extraCallback:Lo/setBoxStrokeColor;


# direct methods
.method constructor <init>(Lo/setBoxStrokeColor;Lo/setChipStrokeWidthResource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/BaseTransientBottomBar$Behavior;->extraCallback:Lo/setBoxStrokeColor;

    invoke-direct {p0, p2}, Lo/zzft;-><init>(Lo/setChipStrokeWidthResource;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 2
    iget-object v0, p0, Lo/BaseTransientBottomBar$Behavior;->extraCallback:Lo/setBoxStrokeColor;

    invoke-static {v0}, Lo/setBoxStrokeColor;->onPostMessage(Lo/setBoxStrokeColor;)V

    return-void
.end method

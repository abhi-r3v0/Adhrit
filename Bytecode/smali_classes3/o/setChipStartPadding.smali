.class final Lo/setChipStartPadding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Ljava/lang/Boolean;

.field private final synthetic onNavigationEvent:Lo/setChipIconSize;


# direct methods
.method constructor <init>(Lo/setChipIconSize;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipStartPadding;->onNavigationEvent:Lo/setChipIconSize;

    iput-object p2, p0, Lo/setChipStartPadding;->extraCallback:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/setChipStartPadding;->onNavigationEvent:Lo/setChipIconSize;

    iget-object v1, p0, Lo/setChipStartPadding;->extraCallback:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lo/setChipIconSize;->extraCallback(Lo/setChipIconSize;Ljava/lang/Boolean;Z)V

    return-void
.end method

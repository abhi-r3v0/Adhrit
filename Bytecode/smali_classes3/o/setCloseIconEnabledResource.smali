.class final Lo/setCloseIconEnabledResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Lo/setChipIconSize;


# direct methods
.method constructor <init>(Lo/setChipIconSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCloseIconEnabledResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lo/setCloseIconEnabledResource;->onNavigationEvent:Lo/setChipIconSize;

    iget-object v0, v0, Lo/setChipIconSize;->onNavigationEvent:Lo/setCounterOverflowTextAppearance;

    invoke-virtual {v0}, Lo/setCounterOverflowTextAppearance;->ICustomTabsCallback()V

    return-void
.end method

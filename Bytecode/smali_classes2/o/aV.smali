.class public final Lo/aV;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/getImportance;

.field private static volatile onNavigationEvent:Lo/getImportance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lo/ChannelListActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ChannelListActivity;-><init>(Lo/R$dimen;)V

    .line 3
    sput-object v0, Lo/aV;->ICustomTabsCallback:Lo/getImportance;

    sput-object v0, Lo/aV;->onNavigationEvent:Lo/getImportance;

    return-void
.end method

.method public static extraCallback()Lo/getImportance;
    .locals 1

    .line 1
    sget-object v0, Lo/aV;->onNavigationEvent:Lo/getImportance;

    return-object v0
.end method

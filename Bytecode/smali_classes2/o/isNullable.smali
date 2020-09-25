.class public final Lo/isNullable;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile ICustomTabsCallback:Lo/setLogId;

.field private static final onMessageChannelReady:Lo/setLogId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lo/issueResolved;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/issueResolved;-><init>(Lo/getDisplayName;)V

    .line 3
    sput-object v0, Lo/isNullable;->onMessageChannelReady:Lo/setLogId;

    sput-object v0, Lo/isNullable;->ICustomTabsCallback:Lo/setLogId;

    return-void
.end method

.method public static onPostMessage()Lo/setLogId;
    .locals 1

    .line 1
    sget-object v0, Lo/isNullable;->ICustomTabsCallback:Lo/setLogId;

    return-object v0
.end method

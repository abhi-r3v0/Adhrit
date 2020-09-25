.class public final Lo/DefaultRemoteConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile extraCallback:Lo/DefaultConversationConfig;

.field private static final onPostMessage:Lo/DefaultConversationConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lo/getEnabledFeatures;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getEnabledFeatures;-><init>(Lo/RemoteConfig;)V

    .line 3
    sput-object v0, Lo/DefaultRemoteConfig;->onPostMessage:Lo/DefaultConversationConfig;

    sput-object v0, Lo/DefaultRemoteConfig;->extraCallback:Lo/DefaultConversationConfig;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/DefaultConversationConfig;
    .locals 1

    .line 1
    sget-object v0, Lo/DefaultRemoteConfig;->extraCallback:Lo/DefaultConversationConfig;

    return-object v0
.end method

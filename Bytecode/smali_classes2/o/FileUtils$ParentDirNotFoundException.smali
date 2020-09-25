.class final synthetic Lo/FileUtils$ParentDirNotFoundException;
.super Ljava/lang/Object;


# static fields
.field static final synthetic ICustomTabsCallback:[I

.field static final synthetic onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lo/newCursor;->values()[Lo/newCursor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/FileUtils$ParentDirNotFoundException;->onPostMessage:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/newCursor;->ICustomTabsCallback$Stub:Lo/newCursor;

    invoke-virtual {v2}, Lo/newCursor;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo/FileUtils$ParentDirNotFoundException;->onPostMessage:[I

    sget-object v3, Lo/newCursor;->onTransact:Lo/newCursor;

    invoke-virtual {v3}, Lo/newCursor;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lo/FileUtils$ParentDirNotFoundException;->onPostMessage:[I

    sget-object v4, Lo/newCursor;->asInterface:Lo/newCursor;

    invoke-virtual {v4}, Lo/newCursor;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lo/onComplete;->values()[Lo/onComplete;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lo/FileUtils$ParentDirNotFoundException;->ICustomTabsCallback:[I

    :try_start_3
    sget-object v4, Lo/onComplete;->onNavigationEvent:Lo/onComplete;

    invoke-virtual {v4}, Lo/onComplete;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lo/FileUtils$ParentDirNotFoundException;->ICustomTabsCallback:[I

    sget-object v3, Lo/onComplete;->onPostMessage:Lo/onComplete;

    invoke-virtual {v3}, Lo/onComplete;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lo/FileUtils$ParentDirNotFoundException;->ICustomTabsCallback:[I

    sget-object v1, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    invoke-virtual {v1}, Lo/onComplete;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

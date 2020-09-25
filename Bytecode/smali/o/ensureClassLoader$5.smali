.class final synthetic Lo/ensureClassLoader$5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic onNavigationEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 434
    invoke-static {}, Lo/ensureClassLoader$extraCallback;->values()[Lo/ensureClassLoader$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/ensureClassLoader$5;->onNavigationEvent:[I

    :try_start_0
    sget-object v1, Lo/ensureClassLoader$extraCallback;->extraCallback:Lo/ensureClassLoader$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/ensureClassLoader$5;->onNavigationEvent:[I

    sget-object v1, Lo/ensureClassLoader$extraCallback;->ICustomTabsCallback:Lo/ensureClassLoader$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

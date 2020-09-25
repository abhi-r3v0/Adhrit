.class public final Lo/MediaBrowserCompat$ItemCallback$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$ItemCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/publish;


# instance fields
.field private final extraCallback:Lo/getPosition;

.field private final onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

.field private final onPostMessage:Lo/getCustomActions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    .line 3000
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    new-instance v1, Lo/DependencyException;

    invoke-direct {v1}, Lo/DependencyException;-><init>()V

    goto :goto_1

    :cond_0
    const-string v1, "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lo/getHandlers;

    invoke-direct {v1}, Lo/getHandlers;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v1, Lo/enablePublishingAndFlushPending;

    invoke-direct {v1}, Lo/enablePublishingAndFlushPending;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-class v3, Lo/enablePublishingAndFlushPending;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit16 v4, v4, 0x85

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "will be used. The error is: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v1, Lo/enablePublishingAndFlushPending;

    invoke-direct {v1}, Lo/enablePublishingAndFlushPending;-><init>()V

    :goto_1
    sput-object v1, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getCustomActions;Lo/getPosition;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 2044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2045
    iput-object p1, p0, Lo/MediaBrowserCompat$ItemCallback$4;->onPostMessage:Lo/getCustomActions;

    .line 2046
    iput-object p2, p0, Lo/MediaBrowserCompat$ItemCallback$4;->extraCallback:Lo/getPosition;

    .line 2047
    iput-object p3, p0, Lo/MediaBrowserCompat$ItemCallback$4;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 45
    invoke-static {}, Lo/MediaBrowserCompat$ItemCallback;->extraCallback()Lo/MediaBrowserCompat$ItemCallback;

    move-result-object v0

    .line 1101
    iget-object v0, v0, Lo/MediaBrowserCompat$ItemCallback;->extraCallback:Lo/MediaBrowserCompat$ItemReceiver;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ItemReceiver;->onMessageChannelReady(Ljava/lang/Runnable;)V

    return-void
.end method

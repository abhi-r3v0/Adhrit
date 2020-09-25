.class public final Lo/performCreateApp$onPostMessage;
.super Lo/performCreateApp;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/performCreateApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/performCreateApp<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/performCreateApp$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 351
    new-instance v0, Lo/performCreateApp$onPostMessage;

    invoke-direct {v0}, Lo/performCreateApp$onPostMessage;-><init>()V

    sput-object v0, Lo/performCreateApp$onPostMessage;->onMessageChannelReady:Lo/performCreateApp$onPostMessage;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Lo/performCreateApp;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 364
    sget-object v0, Lo/performCreateApp$onPostMessage;->onMessageChannelReady:Lo/performCreateApp$onPostMessage;

    return-object v0
.end method


# virtual methods
.method protected final ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 0

    .line 360
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

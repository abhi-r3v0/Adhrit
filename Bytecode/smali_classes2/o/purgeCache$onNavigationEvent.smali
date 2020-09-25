.class public final Lo/purgeCache$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/purgeCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/purgeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/purgeCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lo/purgeCache$onNavigationEvent;

    invoke-direct {v0}, Lo/purgeCache$onNavigationEvent;-><init>()V

    sput-object v0, Lo/purgeCache$onNavigationEvent;->onMessageChannelReady:Lo/purgeCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    return-object p1
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "identity"

    return-object v0
.end method

.method public final onNavigationEvent(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    return-object p1
.end method

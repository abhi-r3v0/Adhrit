.class public final Lo/putLong$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/putLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/putLong$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Lo/putLong$ICustomTabsCallback;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lo/putLong$onMessageChannelReady;->ICustomTabsCallback:Lo/putLong$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/putLong$ICustomTabsCallback;
    .locals 1

    .line 260
    iget-object v0, p0, Lo/putLong$onMessageChannelReady;->ICustomTabsCallback:Lo/putLong$ICustomTabsCallback;

    return-object v0
.end method

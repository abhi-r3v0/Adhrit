.class final Lo/setDisplayOptions$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setVerticalOffset$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDisplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setHorizontalOffset;

.field final onMessageChannelReady:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    new-instance v0, Lo/setHorizontalOffset$ICustomTabsCallback;

    invoke-direct {v0}, Lo/setHorizontalOffset$ICustomTabsCallback;-><init>()V

    .line 65
    iput-object v0, p0, Lo/setDisplayOptions$ICustomTabsCallback;->ICustomTabsCallback:Lo/setHorizontalOffset;

    .line 68
    iput-object p1, p0, Lo/setDisplayOptions$ICustomTabsCallback;->onMessageChannelReady:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final f_()Lo/setHorizontalOffset;
    .locals 1

    .line 74
    iget-object v0, p0, Lo/setDisplayOptions$ICustomTabsCallback;->ICustomTabsCallback:Lo/setHorizontalOffset;

    return-object v0
.end method

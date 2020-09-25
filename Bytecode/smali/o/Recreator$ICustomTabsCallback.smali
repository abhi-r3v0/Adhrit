.class final Lo/Recreator$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Recreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final onNavigationEvent:Ljava/io/File;

.field public final onPostMessage:Lo/containsPosition;


# direct methods
.method constructor <init>(Ljava/io/File;Lo/containsPosition;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lo/Recreator$ICustomTabsCallback;->onPostMessage:Lo/containsPosition;

    .line 43
    iput-object p1, p0, Lo/Recreator$ICustomTabsCallback;->onNavigationEvent:Ljava/io/File;

    return-void
.end method

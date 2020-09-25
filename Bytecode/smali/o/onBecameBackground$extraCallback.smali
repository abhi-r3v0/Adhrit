.class public Lo/onBecameBackground$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onBecameBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lo/onBecameBackground$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lo/onBecameBackground$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

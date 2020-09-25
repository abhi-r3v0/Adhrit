.class public final Lo/hasWindowFocus$onNavigationEvent;
.super Lo/hasWindowFocus$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasWindowFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hasWindowFocus$ICustomTabsCallback<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 231
    const-class v0, Ljava/io/InputStream;

    invoke-direct {p0, p1, v0}, Lo/hasWindowFocus$ICustomTabsCallback;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

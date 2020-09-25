.class public final Lo/getDropDownHorizontalOffset$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPopupBackgroundDrawable$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDropDownHorizontalOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPopupBackgroundDrawable$ICustomTabsCallback<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/ButtonBarLayout;


# direct methods
.method public constructor <init>(Lo/ButtonBarLayout;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/getDropDownHorizontalOffset$extraCallback;->onNavigationEvent:Lo/ButtonBarLayout;

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Lo/setPopupBackgroundDrawable;
    .locals 2

    .line 48
    check-cast p1, Ljava/io/InputStream;

    .line 1058
    new-instance v0, Lo/getDropDownHorizontalOffset;

    iget-object v1, p0, Lo/getDropDownHorizontalOffset$extraCallback;->onNavigationEvent:Lo/ButtonBarLayout;

    invoke-direct {v0, p1, v1}, Lo/getDropDownHorizontalOffset;-><init>(Ljava/io/InputStream;Lo/ButtonBarLayout;)V

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 64
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

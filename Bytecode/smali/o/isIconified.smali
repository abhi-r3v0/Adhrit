.class public Lo/isIconified;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setSubmitButtonEnabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isIconified$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lo/isIconified;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/isIconified;->onPostMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

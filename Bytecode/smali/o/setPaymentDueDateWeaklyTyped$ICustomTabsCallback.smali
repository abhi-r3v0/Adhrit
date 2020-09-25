.class public Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPaymentDueDateWeaklyTyped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;


# instance fields
.field public final extraCallback:Landroid/os/Looper;

.field public final onMessageChannelReady:Lo/getPanMismatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;

    invoke-direct {v0}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;-><init>()V

    invoke-virtual {v0}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->onPostMessage()Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;->onPostMessage:Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;

    return-void
.end method

.method synthetic constructor <init>(Lo/getPanMismatch;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;-><init>(Lo/getPanMismatch;Landroid/os/Looper;B)V

    return-void
.end method

.method private constructor <init>(Lo/getPanMismatch;Landroid/os/Looper;B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;->onMessageChannelReady:Lo/getPanMismatch;

    .line 3
    iput-object p2, p0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;->extraCallback:Landroid/os/Looper;

    return-void
.end method

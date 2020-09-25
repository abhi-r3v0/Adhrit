.class public final Lo/Account$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/Object;

.field public final asBinder:J

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Lo/p$a;

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:J


# direct methods
.method public constructor <init>(IILo/p$a;ILjava/lang/Object;JJ)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Lo/Account$ICustomTabsCallback;->extraCallback:I

    .line 152
    iput p2, p0, Lo/Account$ICustomTabsCallback;->onMessageChannelReady:I

    .line 153
    iput-object p3, p0, Lo/Account$ICustomTabsCallback;->onNavigationEvent:Lo/p$a;

    .line 154
    iput p4, p0, Lo/Account$ICustomTabsCallback;->onPostMessage:I

    .line 155
    iput-object p5, p0, Lo/Account$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Object;

    .line 156
    iput-wide p6, p0, Lo/Account$ICustomTabsCallback;->onRelationshipValidationResult:J

    .line 157
    iput-wide p8, p0, Lo/Account$ICustomTabsCallback;->asBinder:J

    return-void
.end method

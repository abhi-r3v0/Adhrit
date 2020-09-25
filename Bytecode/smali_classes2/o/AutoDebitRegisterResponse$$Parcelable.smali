.class final Lo/AutoDebitRegisterResponse$$Parcelable;
.super Ljava/lang/Object;


# instance fields
.field public final ICustomTabsCallback:J

.field public final onMessageChannelReady:J

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoDebitRegisterResponse$$Parcelable;->onPostMessage:Ljava/lang/String;

    iput-wide p2, p0, Lo/AutoDebitRegisterResponse$$Parcelable;->ICustomTabsCallback:J

    iput-wide p4, p0, Lo/AutoDebitRegisterResponse$$Parcelable;->onMessageChannelReady:J

    return-void
.end method

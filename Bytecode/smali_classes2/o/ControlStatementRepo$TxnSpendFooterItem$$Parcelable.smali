.class final synthetic Lo/ControlStatementRepo$TxnSpendFooterItem$$Parcelable;
.super Ljava/lang/Object;

# interfaces
.implements Lo/DataList;


# instance fields
.field private final onNavigationEvent:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ControlStatementRepo$TxnSpendFooterItem$$Parcelable;->onNavigationEvent:[B

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/util/JsonWriter;)V
    .locals 1

    iget-object v0, p0, Lo/ControlStatementRepo$TxnSpendFooterItem$$Parcelable;->onNavigationEvent:[B

    invoke-static {v0, p1}, Lo/getCurrencyType;->ICustomTabsCallback([BLandroid/util/JsonWriter;)V

    return-void
.end method

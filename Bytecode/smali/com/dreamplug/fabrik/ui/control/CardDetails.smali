.class public final Lcom/dreamplug/fabrik/ui/control/CardDetails;
.super Lo/StaggeredGridLayoutManager;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/control/CardDetails$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0006\n\u0002\u0008H\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u00b7\u0002\u0008\u0007\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0003\u0010\u001c\u001a\u00020\u0013\u0012\n\u0008\u0003\u0010\u001d\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0003\u0010\u001e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0003\u0010\u001f\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0003\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\u0008\u0003\u0010#\u001a\u0004\u0018\u00010\"\u00a2\u0006\u0002\u0010$J\u000b\u0010K\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u0010\u0010Q\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003\u00a2\u0006\u0002\u00107J\u000b\u0010R\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\t\u0010Z\u001a\u00020\u0013H\u00c6\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u0010\u0010_\u001a\u0004\u0018\u00010\"H\u00c6\u0003\u00a2\u0006\u0002\u0010(J\u0010\u0010`\u001a\u0004\u0018\u00010\"H\u00c6\u0003\u00a2\u0006\u0002\u0010(J\u000b\u0010a\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u00e8\u0002\u0010h\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00042\n\u0008\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0003\u0010\u001c\u001a\u00020\u00132\n\u0008\u0003\u0010\u001d\u001a\u0004\u0018\u00010\u00042\n\u0008\u0003\u0010\u001e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0003\u0010\u001f\u001a\u0004\u0018\u00010\u00042\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u00042\n\u0008\u0003\u0010!\u001a\u0004\u0018\u00010\"2\n\u0008\u0003\u0010#\u001a\u0004\u0018\u00010\"H\u00c6\u0001\u00a2\u0006\u0002\u0010iJ\t\u0010j\u001a\u00020kH\u00d6\u0001J\u0013\u0010l\u001a\u00020\u00132\u0008\u0010m\u001a\u0004\u0018\u00010nH\u00d6\u0003J\t\u0010o\u001a\u00020kH\u00d6\u0001J\u0006\u0010p\u001a\u00020\u0013J\u0006\u0010q\u001a\u00020\u0013J\u0006\u0010r\u001a\u00020\u0013J\u0010\u0010s\u001a\u00020\u00132\u0006\u0010m\u001a\u00020nH\u0016J\t\u0010t\u001a\u00020\u0004H\u00d6\u0001J\u0019\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020kH\u00d6\u0001R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0015\u0010!\u001a\u0004\u0018\u00010\"\u00a2\u0006\n\n\u0002\u0010)\u001a\u0004\u0008\'\u0010(R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010&R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010&R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010&R\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010&R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010&R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010&R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010&R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010&R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010&R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010&R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010&R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010&R\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\n\n\u0002\u00108\u001a\u0004\u00086\u00107R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010&R\u0011\u0010\u001c\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010&R\u0013\u0010 \u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010&R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010&R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010&\"\u0004\u0008@\u0010AR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010CR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010&R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010&R\u0015\u0010#\u001a\u0004\u0018\u00010\"\u00a2\u0006\n\n\u0002\u0010)\u001a\u0004\u0008F\u0010(R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010&R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010&R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010&R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010&\u00a8\u0006z"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/CardDetails;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "type",
        "status",
        "account_number",
        "brand",
        "brand_logo_url",
        "cardholder_name",
        "issuer",
        "variant_name",
        "issuer_code",
        "country",
        "reference_id",
        "fingerprint",
        "token",
        "nfc_enabled",
        "",
        "updated_at",
        "template",
        "Lcom/dreamplug/fabrik/ui/control/Template;",
        "created_at",
        "created_by",
        "updated_by",
        "swipedDirection",
        "showCpi",
        "showCertified",
        "templateIdentifierName",
        "identifier",
        "context",
        "sortKey",
        "amount",
        "",
        "transactionDate",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/Template;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V",
        "getAccount_number",
        "()Ljava/lang/String;",
        "getAmount",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getBrand",
        "getBrand_logo_url",
        "getCardholder_name",
        "getContext",
        "getCountry",
        "getCreated_at",
        "getCreated_by",
        "getFingerprint",
        "getId",
        "getIdentifier",
        "getIssuer",
        "getIssuer_code",
        "getNfc_enabled",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getReference_id",
        "getShowCertified",
        "()Z",
        "getShowCpi",
        "getSortKey",
        "getStatus",
        "getSwipedDirection",
        "setSwipedDirection",
        "(Ljava/lang/String;)V",
        "getTemplate",
        "()Lcom/dreamplug/fabrik/ui/control/Template;",
        "getTemplateIdentifierName",
        "getToken",
        "getTransactionDate",
        "getType",
        "getUpdated_at",
        "getUpdated_by",
        "getVariant_name",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/Template;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lcom/dreamplug/fabrik/ui/control/CardDetails;",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "isCardHidden",
        "isCardInactive",
        "isCardNotVerified",
        "isSame",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final account_number:Ljava/lang/String;

.field private final amount:Ljava/lang/Double;

.field private final brand:Ljava/lang/String;

.field private final brand_logo_url:Ljava/lang/String;

.field private final cardholder_name:Ljava/lang/String;

.field private final context:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final created_at:Ljava/lang/String;

.field private final created_by:Ljava/lang/String;

.field private final fingerprint:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final identifier:Ljava/lang/String;

.field private final issuer:Ljava/lang/String;

.field private final issuer_code:Ljava/lang/String;

.field private final nfc_enabled:Ljava/lang/Boolean;

.field private final reference_id:Ljava/lang/String;

.field private final showCertified:Z

.field private final showCpi:Ljava/lang/String;

.field private final sortKey:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private swipedDirection:Ljava/lang/String;

.field private final template:Lcom/dreamplug/fabrik/ui/control/Template;

.field private final templateIdentifierName:Ljava/lang/String;

.field private final token:Ljava/lang/String;

.field private final transactionDate:Ljava/lang/Double;

.field private final type:Ljava/lang/String;

.field private final updated_at:Ljava/lang/String;

.field private final updated_by:Ljava/lang/String;

.field private final variant_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/control/CardDetails$ICustomTabsCallback;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails$ICustomTabsCallback;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/Template;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2
    .param p22    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_cpi"
        .end annotation
    .end param
    .param p23    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_certified"
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_identifier_name"
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "identifier"
        .end annotation
    .end param
    .param p26    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "context"
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "sort_key"
        .end annotation
    .end param
    .param p28    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "amount"
        .end annotation
    .end param
    .param p29    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "transaction_date"
        .end annotation
    .end param

    move-object v0, p0

    .line 55
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->id:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->type:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->account_number:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand_logo_url:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->cardholder_name:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->variant_name:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer_code:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->country:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->reference_id:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->fingerprint:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->token:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->nfc_enabled:Ljava/lang/Boolean;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_at:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->template:Lcom/dreamplug/fabrik/ui/control/Template;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_at:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_by:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_by:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->swipedDirection:Ljava/lang/String;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCpi:Ljava/lang/String;

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCertified:Z

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->templateIdentifierName:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->identifier:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->context:Ljava/lang/String;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->sortKey:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->amount:Ljava/lang/Double;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->transactionDate:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/Template;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 32

    const/high16 v0, 0x200000

    and-int v0, p30, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object/from16 v24, v1

    goto :goto_0

    :cond_0
    move-object/from16 v24, p22

    :goto_0
    const/high16 v0, 0x400000

    and-int v0, p30, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/16 v25, 0x0

    goto :goto_1

    :cond_1
    move/from16 v25, p23

    :goto_1
    const/high16 v0, 0x800000

    and-int v0, p30, v0

    if-eqz v0, :cond_2

    move-object/from16 v26, v1

    goto :goto_2

    :cond_2
    move-object/from16 v26, p24

    :goto_2
    const/high16 v0, 0x1000000

    and-int v0, p30, v0

    if-eqz v0, :cond_3

    move-object/from16 v27, v1

    goto :goto_3

    :cond_3
    move-object/from16 v27, p25

    :goto_3
    const/high16 v0, 0x2000000

    and-int v0, p30, v0

    if-eqz v0, :cond_4

    move-object/from16 v28, v1

    goto :goto_4

    :cond_4
    move-object/from16 v28, p26

    :goto_4
    const/high16 v0, 0x4000000

    and-int v0, p30, v0

    if-eqz v0, :cond_5

    move-object/from16 v29, v1

    goto :goto_5

    :cond_5
    move-object/from16 v29, p27

    :goto_5
    const/high16 v0, 0x8000000

    and-int v0, p30, v0

    if-eqz v0, :cond_6

    move-object/from16 v30, v1

    goto :goto_6

    :cond_6
    move-object/from16 v30, p28

    :goto_6
    const/high16 v0, 0x10000000

    and-int v0, p30, v0

    if-eqz v0, :cond_7

    move-object/from16 v31, v1

    goto :goto_7

    :cond_7
    move-object/from16 v31, p29

    :goto_7
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    .line 54
    invoke-direct/range {v2 .. v31}, Lcom/dreamplug/fabrik/ui/control/CardDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/Template;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/fabrik/ui/control/CardDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/Template;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/dreamplug/fabrik/ui/control/CardDetails;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p30

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->type:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->account_number:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand_logo_url:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->cardholder_name:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->variant_name:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer_code:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->country:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->reference_id:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->fingerprint:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->token:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->nfc_enabled:Ljava/lang/Boolean;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_at:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->template:Lcom/dreamplug/fabrik/ui/control/Template;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_at:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_by:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_by:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->swipedDirection:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCpi:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-boolean v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCertified:Z

    goto :goto_16

    :cond_16
    move/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->templateIdentifierName:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->identifier:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->context:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->sortKey:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->amount:Ljava/lang/Double;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->transactionDate:Ljava/lang/Double;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p29

    :goto_1c
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p28, v15

    move-object/from16 p29, v1

    invoke-virtual/range {p0 .. p29}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/Template;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer_code:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->reference_id:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->nfc_enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_at:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Lcom/dreamplug/fabrik/ui/control/Template;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->template:Lcom/dreamplug/fabrik/ui/control/Template;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_by:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_by:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->swipedDirection:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCpi:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCertified:Z

    return v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->templateIdentifierName:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->context:Ljava/lang/String;

    return-object v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component28()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public final component29()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->transactionDate:Ljava/lang/Double;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->account_number:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand_logo_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->cardholder_name:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->variant_name:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/Template;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lcom/dreamplug/fabrik/ui/control/CardDetails;
    .locals 31
    .param p22    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_cpi"
        .end annotation
    .end param
    .param p23    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_certified"
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_identifier_name"
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "identifier"
        .end annotation
    .end param
    .param p26    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "context"
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "sort_key"
        .end annotation
    .end param
    .param p28    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "amount"
        .end annotation
    .end param
    .param p29    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "transaction_date"
        .end annotation
    .end param

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    new-instance v30, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-object/from16 v0, v30

    invoke-direct/range {v0 .. v29}, Lcom/dreamplug/fabrik/ui/control/CardDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/Template;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v30
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->account_number:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->account_number:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand_logo_url:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand_logo_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->cardholder_name:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->cardholder_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->variant_name:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->variant_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer_code:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer_code:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->country:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->country:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->reference_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->reference_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->fingerprint:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->fingerprint:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->token:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->token:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->nfc_enabled:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->nfc_enabled:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_at:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_at:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->template:Lcom/dreamplug/fabrik/ui/control/Template;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->template:Lcom/dreamplug/fabrik/ui/control/Template;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_at:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_at:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_by:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_by:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_by:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_by:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->swipedDirection:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->swipedDirection:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCpi:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCpi:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCertified:Z

    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCertified:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->templateIdentifierName:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->templateIdentifierName:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->identifier:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->identifier:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->context:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->context:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->sortKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->sortKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->amount:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->amount:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->transactionDate:Ljava/lang/Double;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->transactionDate:Ljava/lang/Double;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAccount_number()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->account_number:Ljava/lang/String;

    return-object v0
.end method

.method public final getAmount()Ljava/lang/Double;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public final getBrand()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public final getBrand_logo_url()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand_logo_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardholder_name()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->cardholder_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->context:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreated_at()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreated_by()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_by:Ljava/lang/String;

    return-object v0
.end method

.method public final getFingerprint()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getIssuer()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public final getIssuer_code()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer_code:Ljava/lang/String;

    return-object v0
.end method

.method public final getNfc_enabled()Ljava/lang/Boolean;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->nfc_enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getReference_id()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->reference_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowCertified()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCertified:Z

    return v0
.end method

.method public final getShowCpi()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCpi:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortKey()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getSwipedDirection()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->swipedDirection:Ljava/lang/String;

    return-object v0
.end method

.method public final getTemplate()Lcom/dreamplug/fabrik/ui/control/Template;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->template:Lcom/dreamplug/fabrik/ui/control/Template;

    return-object v0
.end method

.method public final getTemplateIdentifierName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->templateIdentifierName:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionDate()Ljava/lang/Double;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->transactionDate:Ljava/lang/Double;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdated_at()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_at:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdated_by()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_by:Ljava/lang/String;

    return-object v0
.end method

.method public final getVariant_name()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->variant_name:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->account_number:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand_logo_url:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->cardholder_name:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->variant_name:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer_code:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->country:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->reference_id:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->fingerprint:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->token:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->nfc_enabled:Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_at:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->template:Lcom/dreamplug/fabrik/ui/control/Template;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_at:Ljava/lang/String;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_by:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_12
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_by:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_13

    :cond_13
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->swipedDirection:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_14
    const/4 v2, 0x0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCpi:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_15
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCertified:Z

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :cond_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->templateIdentifierName:Ljava/lang/String;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_16

    :cond_17
    const/4 v2, 0x0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_18
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->context:Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_18

    :cond_19
    const/4 v2, 0x0

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->sortKey:Ljava/lang/String;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_19

    :cond_1a
    const/4 v2, 0x0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->amount:Ljava/lang/Double;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1a

    :cond_1b
    const/4 v2, 0x0

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->transactionDate:Ljava/lang/Double;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1c
    add-int/2addr v0, v1

    return v0
.end method

.method public final isCardHidden()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    const-string v1, "hidden"

    .line 3056
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isCardInactive()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    const-string v1, "inactive"

    .line 4056
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isCardNotVerified()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    const-string v1, "created"

    .line 1056
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    const-string/jumbo v1, "verification_failed"

    .line 2056
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isSame(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v0, p0

    check-cast v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eq p1, v0, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->id:Ljava/lang/String;

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;->id:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final setSwipedDirection(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->swipedDirection:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardDetails(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", account_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->account_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", brand_logo_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand_logo_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cardholder_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->cardholder_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", issuer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", variant_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->variant_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", issuer_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reference_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->reference_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nfc_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->nfc_enabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updated_at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->template:Lcom/dreamplug/fabrik/ui/control/Template;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", created_at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", created_by="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_by:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updated_by="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_by:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", swipedDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->swipedDirection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showCpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCpi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showCertified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCertified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", templateIdentifierName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->templateIdentifierName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sortKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->sortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->amount:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->transactionDate:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->account_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->brand_logo_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->cardholder_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->variant_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->issuer_code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->reference_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->nfc_enabled:Ljava/lang/Boolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_at:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->template:Lcom/dreamplug/fabrik/ui/control/Template;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_at:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->created_by:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->updated_by:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->swipedDirection:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCpi:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->showCertified:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->templateIdentifierName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->identifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->context:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->sortKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->amount:Ljava/lang/Double;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails;->transactionDate:Ljava/lang/Double;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

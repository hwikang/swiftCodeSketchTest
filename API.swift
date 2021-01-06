// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class AppInitQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query appInit {
      appInit {
        __typename
        bgAudioUrls
        codingUrl
        guideLanguage {
          __typename
          en {
            __typename
            main {
              __typename
              image {
                __typename
                url
              }
            }
            freeCoding {
              __typename
              image {
                __typename
                url
              }
            }
            coding {
              __typename
              image {
                __typename
                url
              }
            }
            project {
              __typename
              image {
                __typename
                url
              }
            }
            uploadCodingTip {
              __typename
              image {
                __typename
                url
              }
            }
          }
          ko {
            __typename
            main {
              __typename
              image {
                __typename
                url
              }
            }
            freeCoding {
              __typename
              image {
                __typename
                url
              }
            }
            coding {
              __typename
              image {
                __typename
                url
              }
            }
            project {
              __typename
              image {
                __typename
                url
              }
            }
            uploadCodingTip {
              __typename
              image {
                __typename
                url
              }
            }
          }
        }
      }
    }
    """

  public let operationName: String = "appInit"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("appInit", type: .nonNull(.object(AppInit.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(appInit: AppInit) {
      self.init(unsafeResultMap: ["__typename": "Query", "appInit": appInit.resultMap])
    }

    /// 앱에 필요한 정보
    public var appInit: AppInit {
      get {
        return AppInit(unsafeResultMap: resultMap["appInit"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "appInit")
      }
    }

    public struct AppInit: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AppInit"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bgAudioUrls", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("codingUrl", type: .nonNull(.scalar(String.self))),
          GraphQLField("guideLanguage", type: .nonNull(.object(GuideLanguage.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(bgAudioUrls: [String], codingUrl: String, guideLanguage: GuideLanguage) {
        self.init(unsafeResultMap: ["__typename": "AppInit", "bgAudioUrls": bgAudioUrls, "codingUrl": codingUrl, "guideLanguage": guideLanguage.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 백그라운드 배경음악 리스트
      public var bgAudioUrls: [String] {
        get {
          return resultMap["bgAudioUrls"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "bgAudioUrls")
        }
      }

      /// 코딩주소
      public var codingUrl: String {
        get {
          return resultMap["codingUrl"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "codingUrl")
        }
      }

      /// 가이드 튜터리얼 리스트
      public var guideLanguage: GuideLanguage {
        get {
          return GuideLanguage(unsafeResultMap: resultMap["guideLanguage"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "guideLanguage")
        }
      }

      public struct GuideLanguage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["AppGuideLanguage"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("en", type: .nonNull(.object(En.selections))),
            GraphQLField("ko", type: .nonNull(.object(Ko.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(en: En, ko: Ko) {
          self.init(unsafeResultMap: ["__typename": "AppGuideLanguage", "en": en.resultMap, "ko": ko.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// 코딩화면
        public var en: En {
          get {
            return En(unsafeResultMap: resultMap["en"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "en")
          }
        }

        /// main
        public var ko: Ko {
          get {
            return Ko(unsafeResultMap: resultMap["ko"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "ko")
          }
        }

        public struct En: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["AppGuide"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("main", type: .nonNull(.list(.nonNull(.object(Main.selections))))),
              GraphQLField("freeCoding", type: .nonNull(.list(.nonNull(.object(FreeCoding.selections))))),
              GraphQLField("coding", type: .nonNull(.list(.nonNull(.object(Coding.selections))))),
              GraphQLField("project", type: .nonNull(.list(.nonNull(.object(Project.selections))))),
              GraphQLField("uploadCodingTip", type: .nonNull(.object(UploadCodingTip.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(main: [Main], freeCoding: [FreeCoding], coding: [Coding], project: [Project], uploadCodingTip: UploadCodingTip) {
            self.init(unsafeResultMap: ["__typename": "AppGuide", "main": main.map { (value: Main) -> ResultMap in value.resultMap }, "freeCoding": freeCoding.map { (value: FreeCoding) -> ResultMap in value.resultMap }, "coding": coding.map { (value: Coding) -> ResultMap in value.resultMap }, "project": project.map { (value: Project) -> ResultMap in value.resultMap }, "uploadCodingTip": uploadCodingTip.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// main
          public var main: [Main] {
            get {
              return (resultMap["main"] as! [ResultMap]).map { (value: ResultMap) -> Main in Main(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Main) -> ResultMap in value.resultMap }, forKey: "main")
            }
          }

          /// 자유 코딩화면
          public var freeCoding: [FreeCoding] {
            get {
              return (resultMap["freeCoding"] as! [ResultMap]).map { (value: ResultMap) -> FreeCoding in FreeCoding(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: FreeCoding) -> ResultMap in value.resultMap }, forKey: "freeCoding")
            }
          }

          /// 코딩화면
          public var coding: [Coding] {
            get {
              return (resultMap["coding"] as! [ResultMap]).map { (value: ResultMap) -> Coding in Coding(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Coding) -> ResultMap in value.resultMap }, forKey: "coding")
            }
          }

          /// 프로젝트
          public var project: [Project] {
            get {
              return (resultMap["project"] as! [ResultMap]).map { (value: ResultMap) -> Project in Project(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Project) -> ResultMap in value.resultMap }, forKey: "project")
            }
          }

          /// 업로드 코딩 팁
          public var uploadCodingTip: UploadCodingTip {
            get {
              return UploadCodingTip(unsafeResultMap: resultMap["uploadCodingTip"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "uploadCodingTip")
            }
          }

          public struct Main: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["AppGuideContent"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .nonNull(.object(Image.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: Image) {
              self.init(unsafeResultMap: ["__typename": "AppGuideContent", "image": image.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 가이드 이미지URL
            public var image: Image {
              get {
                return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "image")
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ImageInfo"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(url: String) {
                self.init(unsafeResultMap: ["__typename": "ImageInfo", "url": url])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// URL
              public var url: String {
                get {
                  return resultMap["url"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }
            }
          }

          public struct FreeCoding: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["AppGuideContent"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .nonNull(.object(Image.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: Image) {
              self.init(unsafeResultMap: ["__typename": "AppGuideContent", "image": image.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 가이드 이미지URL
            public var image: Image {
              get {
                return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "image")
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ImageInfo"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(url: String) {
                self.init(unsafeResultMap: ["__typename": "ImageInfo", "url": url])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// URL
              public var url: String {
                get {
                  return resultMap["url"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }
            }
          }

          public struct Coding: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["AppGuideContent"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .nonNull(.object(Image.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: Image) {
              self.init(unsafeResultMap: ["__typename": "AppGuideContent", "image": image.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 가이드 이미지URL
            public var image: Image {
              get {
                return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "image")
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ImageInfo"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(url: String) {
                self.init(unsafeResultMap: ["__typename": "ImageInfo", "url": url])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// URL
              public var url: String {
                get {
                  return resultMap["url"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }
            }
          }

          public struct Project: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["AppGuideContent"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .nonNull(.object(Image.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: Image) {
              self.init(unsafeResultMap: ["__typename": "AppGuideContent", "image": image.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 가이드 이미지URL
            public var image: Image {
              get {
                return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "image")
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ImageInfo"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(url: String) {
                self.init(unsafeResultMap: ["__typename": "ImageInfo", "url": url])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// URL
              public var url: String {
                get {
                  return resultMap["url"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }
            }
          }

          public struct UploadCodingTip: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["AppGuideContent"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .nonNull(.object(Image.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: Image) {
              self.init(unsafeResultMap: ["__typename": "AppGuideContent", "image": image.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 가이드 이미지URL
            public var image: Image {
              get {
                return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "image")
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ImageInfo"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(url: String) {
                self.init(unsafeResultMap: ["__typename": "ImageInfo", "url": url])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// URL
              public var url: String {
                get {
                  return resultMap["url"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }
            }
          }
        }

        public struct Ko: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["AppGuide"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("main", type: .nonNull(.list(.nonNull(.object(Main.selections))))),
              GraphQLField("freeCoding", type: .nonNull(.list(.nonNull(.object(FreeCoding.selections))))),
              GraphQLField("coding", type: .nonNull(.list(.nonNull(.object(Coding.selections))))),
              GraphQLField("project", type: .nonNull(.list(.nonNull(.object(Project.selections))))),
              GraphQLField("uploadCodingTip", type: .nonNull(.object(UploadCodingTip.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(main: [Main], freeCoding: [FreeCoding], coding: [Coding], project: [Project], uploadCodingTip: UploadCodingTip) {
            self.init(unsafeResultMap: ["__typename": "AppGuide", "main": main.map { (value: Main) -> ResultMap in value.resultMap }, "freeCoding": freeCoding.map { (value: FreeCoding) -> ResultMap in value.resultMap }, "coding": coding.map { (value: Coding) -> ResultMap in value.resultMap }, "project": project.map { (value: Project) -> ResultMap in value.resultMap }, "uploadCodingTip": uploadCodingTip.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// main
          public var main: [Main] {
            get {
              return (resultMap["main"] as! [ResultMap]).map { (value: ResultMap) -> Main in Main(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Main) -> ResultMap in value.resultMap }, forKey: "main")
            }
          }

          /// 자유 코딩화면
          public var freeCoding: [FreeCoding] {
            get {
              return (resultMap["freeCoding"] as! [ResultMap]).map { (value: ResultMap) -> FreeCoding in FreeCoding(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: FreeCoding) -> ResultMap in value.resultMap }, forKey: "freeCoding")
            }
          }

          /// 코딩화면
          public var coding: [Coding] {
            get {
              return (resultMap["coding"] as! [ResultMap]).map { (value: ResultMap) -> Coding in Coding(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Coding) -> ResultMap in value.resultMap }, forKey: "coding")
            }
          }

          /// 프로젝트
          public var project: [Project] {
            get {
              return (resultMap["project"] as! [ResultMap]).map { (value: ResultMap) -> Project in Project(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Project) -> ResultMap in value.resultMap }, forKey: "project")
            }
          }

          /// 업로드 코딩 팁
          public var uploadCodingTip: UploadCodingTip {
            get {
              return UploadCodingTip(unsafeResultMap: resultMap["uploadCodingTip"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "uploadCodingTip")
            }
          }

          public struct Main: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["AppGuideContent"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .nonNull(.object(Image.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: Image) {
              self.init(unsafeResultMap: ["__typename": "AppGuideContent", "image": image.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 가이드 이미지URL
            public var image: Image {
              get {
                return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "image")
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ImageInfo"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(url: String) {
                self.init(unsafeResultMap: ["__typename": "ImageInfo", "url": url])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// URL
              public var url: String {
                get {
                  return resultMap["url"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }
            }
          }

          public struct FreeCoding: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["AppGuideContent"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .nonNull(.object(Image.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: Image) {
              self.init(unsafeResultMap: ["__typename": "AppGuideContent", "image": image.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 가이드 이미지URL
            public var image: Image {
              get {
                return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "image")
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ImageInfo"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(url: String) {
                self.init(unsafeResultMap: ["__typename": "ImageInfo", "url": url])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// URL
              public var url: String {
                get {
                  return resultMap["url"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }
            }
          }

          public struct Coding: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["AppGuideContent"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .nonNull(.object(Image.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: Image) {
              self.init(unsafeResultMap: ["__typename": "AppGuideContent", "image": image.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 가이드 이미지URL
            public var image: Image {
              get {
                return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "image")
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ImageInfo"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(url: String) {
                self.init(unsafeResultMap: ["__typename": "ImageInfo", "url": url])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// URL
              public var url: String {
                get {
                  return resultMap["url"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }
            }
          }

          public struct Project: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["AppGuideContent"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .nonNull(.object(Image.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: Image) {
              self.init(unsafeResultMap: ["__typename": "AppGuideContent", "image": image.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 가이드 이미지URL
            public var image: Image {
              get {
                return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "image")
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ImageInfo"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(url: String) {
                self.init(unsafeResultMap: ["__typename": "ImageInfo", "url": url])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// URL
              public var url: String {
                get {
                  return resultMap["url"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }
            }
          }

          public struct UploadCodingTip: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["AppGuideContent"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .nonNull(.object(Image.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: Image) {
              self.init(unsafeResultMap: ["__typename": "AppGuideContent", "image": image.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 가이드 이미지URL
            public var image: Image {
              get {
                return Image(unsafeResultMap: resultMap["image"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "image")
              }
            }

            public struct Image: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ImageInfo"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(url: String) {
                self.init(unsafeResultMap: ["__typename": "ImageInfo", "url": url])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// URL
              public var url: String {
                get {
                  return resultMap["url"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }
            }
          }
        }
      }
    }
  }
}
